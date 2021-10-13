import 'package:newsapp/models/category.dart';
import 'package:newsapp/models/news.dart';

class StaticValues {
  List<News> news = [
    News(
        title:
            "IPL 2021 Qualifier 1 | CSK beat DC by four wickets to take the shortest route to final",
        image:
            "https://th.thgim.com/sport/cricket/vr3t44/article36931869.ece/ALTERNATES/FREE_660/DelhiCapitals",
        source: "The Hindu",
        sourceImage:
            "https://th.thgim.com/static/theme/default/base/img/logo.png",
        time: "OCTOBER 10, 2021 19:17 IST",
        descrption:
            "The ageless Mahendra Singh Dhoni produced a nostalgic little innings to take a band of old men from Chennai Super Kings into their ninth Indian Premier League final after beating Delhi Capitals by four wickets here on Sunday.DC though will get another shot at making it to the final when they meet the winner of the eliminator between KKR and RCB scheduled Monday.Needing 13 off the last over, Dhoni hit a square cut, got a bit of luck going his way and then pulled DC's best bowler Tom Curran for the most celebrated T20 boundary of recent times. Before that, he had just slapped Avesh Khan for a six over mid-wicket.Curran and Avesh weren't bad but it was one of those days, the cricketing Gods wanted the 40-year-old to finish it in style."),
    News(
        title: "Apple’s new iPhone to take longer to reach customers: analysts",
        image:
            "https://th.thgim.com/sci-tech/technology/gadgets/gnth5w/article36465185.ece/ALTERNATES/FREE_355/Appleiphone13colorsgeo09142021",
        source: "The Hindu",
        sourceImage:
            "https://th.thgim.com/static/theme/default/base/img/logo.png",
        time: "YESTERDAY",
        descrption:
            "Apple Inc's customers will have to wait for a few more weeks to lay their hands on the new iPhone 13 as supply chain delays and strong demand lead to one of the longest waiting times for the phone in recent years, analysts said.The delivery time for Apple's iPhones after a new launch is watched by analysts as one of the measures to gauge demand for the flagship phone's newest model. But this year, it is also shining a light on supply chain issues plaguing technology companies ahead of the holiday shopping season."),
    News(
        title:
            "Children aged 12 and above must be prioritised for vaccination: ICMR",
        image:
            "https://images.unsplash.com/photo-1542587227-8802646daa56?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2Nob29sJTIwY2hpbGRyZW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
        source: "THe Hindu",
        sourceImage:
            "https://th.thgim.com/static/theme/default/base/img/logo.png",
        time: "SEPTEMBER 28, 2021 12:52 IST",
        descrption:
            "Available evidence suggests that children aged 12 and above are at a high risk of contracting COVID-19 infection and must be prioritised for vaccination compared to younger children, said experts at the Indian Council of Medical Research (ICMR), adding that schools need to be reopened in a phased manner (beginning with primary schools followed by secondary schools) and allowed to remain open and safe with appropriate implementation of multi-layered mitigation measures where children’s participation remains essential.An opinion piece titled ‘Reopening of schools during COVID-19 pandemic: A persistent dilemma’ published in the Indian Journal of Medical Research further adds that there is ample evidence to suggest that children aged 1-17 years have similar susceptibility to a mild form of SARS-CoV-2 infection as in adults. However, the risk of severe disease and mortality in children is less.The fourth round of the National Serosurvey for COVID-19 held in June 2021 in India revealed that more than half of children aged between 6 and 17 were seropositive, which indicated that a considerable proportion of them had been infected with SARS-CoV-2.“However, treatment centres did not experience attending to severely ill SARS-CoV-2-infected children with any greater frequency during the second wave of COVID-19 in May & June 2021 compared to the previous year, while adults were being treated in inpatient facilities in considerable numbers throughout the country coinciding with the rapid spread of Delta variant in 2021,” states ICMR in its paper.The paper further states that it is well known that COVID-19 transmission is an ‘over-dispersed’ phenomenon, hence testing strategies in school settings could serve as key interventions to check the potential spread of the virus.“It must also be acknowledged that the testing strategies for SARS-CoV-2 infection in schools should act as adjunct and not substitute to other organisational and behavioural interventions,” states ICMR, while adding that frequent testing of school staff and students for early detection of cases is essential to prevent outbreaks.“Routine temperature or symptom checking in schools should be avoided due to limited evidence on their utility. It is also recommended that schools should have access to on-site testing facilities as per existing country-specific guidelines. Temporary or localised closures of a class or school may occur depending upon the local community transmission levels or if COVID-19 indicators worsen,” states the paper."),
    News(
        title:
            "Rupee inches 8 paise higher to 73.75 against US dollar in early trade",
        descrption:
            "The Indian rupee appreciated 8 paise to 73.75 against the U.S. dollar in opening trade on September 28, tracking positive domestic equities. Forex traders said rupee is trading in a narrow range as weakness of Asian currencies, firm crude oil prices and strong dollar weighed on the domestic unit.At the interbank foreign exchange, the rupee opened at 73.79 against the dollar, then edged higher to 73.75, up 8 paise over its previous close.On Monday, the rupee had settled at 73.83 against the U.S. dollar.Meanwhile, the dollar index, which gauges the greenback’s strength against a basket of six currencies, rose 0.06% to 93.44.The Indian rupee opened on a flat note this Tuesday morning against the dollar, tracking the strength of the greenback and strong crude oil prices, Reliance Securities said in a research note.Moreover, most emerging market and Asian currencies have started weaker this Tuesday morning and will weigh on sentiments, the note added.Meanwhile, foreign institutional investors were net sellers in the capital market on Monday as they offloaded shares worth ₹594.63 crore, as per exchange data.On the domestic equity market front, BSE Sensex was trading 16.19 points or 0.03% higher at 60,094.07, while the broader NSE Nifty advanced 24.75 points or 0.14% to 17,879.85.Meanwhile, global oil benchmark Brent crude futures rose 0.79% to 80.16 dollar per barrel.",
        image:
            "https://media.gettyimages.com/photos/concept-of-indian-coin-one-rupee-india-asia-picture-id520896312?k=20&m=520896312&s=612x612&w=0&h=9EhWj9NpYwcFuhcsVAsDB-v3qsYeuH-_bLAUgGCXZJQ=",
        source: "The Hindu",
        sourceImage:
            "https://th.thgim.com/static/theme/default/base/img/logo.png",
        time: "SEPTEMBER 28, 2021 11:24 IST"),
  ];

  List<Category> categories = [
    Category(
      name: "Covid-19",
    ),
    Category(
      name: "Market",
    ),
    Category(
      name: "Tech",
    ),
    Category(
      name: "Sport",
    ),
    Category(
      name: "Business",
    ),
  ];
}
