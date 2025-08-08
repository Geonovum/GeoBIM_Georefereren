const config = require('./config.js');

const alternateFormats = config.respecConfig.alternateFormats;
if (alternateFormats === undefined) {
    console.warn("\'alternateFormats\' not found.");
}
else {
    const found = alternateFormats.find(element => element.label === "pdf");
    if (found === undefined) {
        console.warn("PDF not selected as alternate format.");
    }
    else if (found.uri === undefined) {
        console.warn("PDF file name (\'uri\') missing.");
    }
    else {
        const name = found.uri;
        console.log("Printing PDF with name: " + name);

        // The following is based on code from
        // https://www.bannerbear.com/blog/how-to-convert-html-into-pdf-with-node-js-and-puppeteer/
        const puppeteer = require('puppeteer');

        (async () => {
            const browser = await puppeteer.launch();
            const page = await browser.newPage();
            const website_url = 'http://localhost:8080/snapshot.html';
            await page.goto(website_url, { waitUntil: 'networkidle0' });
            await page.emulateMediaType('print');
            await page.addStyleTag({ content: '.sidelabel {position: absolute}' })
            const pdf = await page.pdf({
                path: name,
                margin: { top: '100px', right: '50px', bottom: '100px', left: '50px' },
                printBackground: true,
                format: 'A4',
            });

            await browser.close();
        })();
    }
}