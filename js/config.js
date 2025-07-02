let respecConfig = {
  useLogo: true,
  useLabel: true,
  // title is verplicht! Neem hier de titel van het document op ----------------------
  title: "Georefereren GeoBIM",
  //-- specStatus is verplicht! (activeer 1 van de volgende) --------------------------
  specStatus: "wv",                   // Werkversie
  //specStatus: "cv",               // Consultatieversie
  //specStatus: "vv",               // Versie ter vaststelling
  //specStatus: "def",              // Vastgestelde versie
  //specStatus: "basis",            // Basis Document
  //-- specType is verplicht bij alle andere dan BASIS ---------------------------------
  //specType: "NO",                 // Norm
  //specType: "ST",                 // Standaard
  //specType: "IM",                 // Informatie Model
  specType: "PR",                 // Praktijkrichtlijn
  //specType: "HR",                     // HandReiking
  //specType: "WA",                 // Werkafspraak
  //specType: "BD",                 // Beheer Documentatie
  //specType: "AL",                 // Algemeen document
  //specType: "BP",                 // Best Practice
  //-- pubDomain is verplicht! (komt in de URL) -------------------------------------
  //-- zie: https://geonovum.github.io/handleiding-tooling/ReSpec/#pubdomain
  pubDomain: "TODO",
  //-- license: voor de geldende gebruiksvoorwaarden. Default is cc-by.
  //licence: "cc-by-nd",            // bronvermelding, geen afgeleide werken (default)
  //licence: "cc0",                 // Public Domain Dedication
  licence: "cc-by",                 // Attribution, met bronvermelding
  //-- TODO shortName is verplicht! (komt in de URL: kies logische afkorting)--------------
  shortName: "NL-GeoBIM-GeoRef",
  //edDraftURI = De URI van de draft version. Deze wordt automatisch afgeleid van de github URI; maar kan hier overschreven worden. 
	//edDraftURI: ["https://geonovum.github.io", "/", "shortName"],

  //-- publishDate is verplicht -------------------------------------------------------
  //-- NB: in de werkversie uitzetten, want dan pakt Respec de pushdate ---------------
  //publishDate: "2023-03-28",
  //eventueel is het mogelijk een versienummer mee te geven, maar bij Geonovum werken we gewoonlijk alleen met datum als onderdeel van de permanente URI.
  //publishVersion: "0.0.2",
  //previousVersion: "0.0.1",
  //-- Voor dit blok geldt: alleen als er eerdere versies zijn en altijd beiden aan/uit! 
  //previousPublishDate: "2014-05-01",
  //previousMaturity: "CV",
  //-- TODO: de namen van de Editor(s) / Redacteur(en)---------------------------------------
  //-- vul in: per Editor: name:, company:, companyURL: -------------------------------
  editors:
    [
      {
        name: "Rolf Jonker",
        company: "Geonovum",
        companyURL: "https://www.geonovum.nl",
      }
    ],
  //-- de namen van de auteur(s) ------------------------------------------------------
  //-- vul in: per auteur: name:, company:, companyURL: -------------------------------
  authors:
    [
      {
        name: "Paul Strokap",
        company: "VORM",
        companyURL: "https://vorm.nl/",
      },
      {
        name: "Hans Lammerts",
        company: "Lammerts Engineering",
        companyURL: "https://www.lammerts-engineering.nl/",
      },
      {
        name: "Daan van der Heide",
        company: "Rijkswaterstaat",
        companyURL: "https://www.rijkswaterstaat.nl/",
      },
      {
        name: "Daisy Sparla",
        company: "Rijkswaterstaat",
        companyURL: "https://www.rijkswaterstaat.nl/",
      },
      {
        name: "Joost Geveart",
        company: "Bedrock",
        companyURL: "https://bedrock.engineer/",
      },
      {
        name: "Loek Wensveen",
        company: "Mobilis",
        companyURL: "https://www.mobilis.nl/",
      },
      {
        name: "Lennard Huisman",
        company: "Kadaster",
        companyURL: "https://www.kadaster.nl/",
      },
            {
        name: "Cathelijne Kleijwegt",
        company: "Esri",
        companyURL: "https://www.esri.nl/nl-nl/home",
      }
    ],
  // TODO: Vul de github URL in.
  //neem hier de URL van de github repository op waar het respec document in staat
  github: "https://github.com/Geonovum/temp_geobim",
  // Create PDF and link to file in header (optional):
  // TODO: Change the filename as preferred.
  alternateFormats: [
      {
          label: "pdf",
          uri: "template.pdf",
      },
  ],
  // Lokale lijst voor bibliografie
  // - Kijk eerst naar de beschikbare www.specref.org .
  // - Kijk daarna in de organisatieconfig.
  // - Voeg dan pas hieronder toe.
  localBiblio: {
        "Stoter2020": {
            href: "https://3d.bk.tudelft.nl/ken/files/20_geoinfo.pdf",
            title: "Gebruik van BIM in Geo in de praktijk: voorbij de hype",
            authors: ["Jantien Stoter, Francesca Noarda, Teng Wu, Ken Arroyo Ohori, Thomas Krijnen"],
            date: "2020"
        },
        "Mallela2024": {
            href: "https://www.buildingsmart.org/wp-content/uploads/2024/05/bSI-OGC-BIM-GIS-Strategic-Roadmap_Industry_Insight_bSI_v2.pdf",
            title: "Enabling information continuity across BIM-GIS domains:A bSI and OGC strategic roadmap",
            authors: ["Jagannath Mallela, Abhishek Bhargav"],
            date: "2024"
      }
    }   
};
