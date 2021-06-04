
<%@page import="TheoryOfAlgorithms.NewSkill.Lab5.Lab5_2"%>
<%@page import="TheoryOfAlgorithms.NewSkill.Lab5.Lab5_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab5_1 lab5_1 = new Lab5_1("The Nissan Leaf, stylised as LEAF, is a compact"
            + " five-door hatchback battery electric vehicle (BEV) manufactured"
            + " by Nissan. It was introduced in Japan and the United States in"
            + " December 2010, and it is currently in its second generation, "
            + "introduced in Japan in October 2017. During its product life"
            + " cycle, the Leaf's range on a full charge gradually has been "
            + "increased from 117 km (73 miles) to 364 km (226 miles) (EPA rated),"
            + " thanks to several minor improvements but mainly to the use of a"
            + " larger battery pack. Among other awards and recognition, the Leaf"
            + " has won the 2010 Green Car Vision Award, the 2011 European Car of the"
            + " Year, the 2011 World Car of the Year, and the 2011–2012 Car of the Year"
            + " Japan. Global sales totaled 500,000 Leafs by December 2020. Europe is its"
            + " largest market, with over 180,000 units, followed by the United States, with"
            + " more than 151,000, and Japan, with over 146,000, all through December 2020."
            + " The Leaf listed as the world's all-time top selling plug-in electric"
            + " car through December 2019. The Tesla Model 3 surpassed the Leaf in early"
            + " 2020 to become the new all-time best selling electric car. Nissan sought"
            + " to make the Leaf appealing to mainstream drivers by giving it a familiar"
            + " five-door hatchback design.[11] The body has a sharp V-shape design with "
            + "large, up slanting headlights that split and redirect airflow away from the "
            + "door mirrors, and the bottom of the car has aerodynamic panelling."
            + " The battery, the heaviest part of most electric vehicles, is situated "
            + "below the seats and rear foot space, keeping the center of gravity as "
            + "low as possible and giving the car better structural rigidity than a "
            + "conventional five-door hatchback. The Leaf is powered by an electric"
            + " synchronous motor with 80 kW (107 hp) and 280 N⋅m (207 ft⋅lb) driving"
            + " the front wheels. The Leaf was initially equipped with a 24 kWh lithium"
            + " ion battery, later increased to 30 kWh. The battery is manufactured by "
            + "Automotive Energy Supply Corporation. It's guaranteed for eight years or"
            + " 100,000 miles in the USA,[14] and 100 000 km or 5 years in Europe. There "
            + "is no active cooling of the battery pack, only passive cooling"
            + " by radiation. There is a battery refurbishment program in Japan,"
            + " but not in the US. According to a 2015 report by Warranty Direct, "
            + "of 35,000 Leafs sold in Europe, three had had a battery failure, compared "
            + "to a failure rate 25 times higher for internal combustion engined cars. "
            + "Nissan reports the 2011 Leaf has a drag coefficient of Cd=0.29 and the"
            + " 2013 model Cd=0.28. The Leaf is generally cheaper to operate than"
            + " gasoline and hybrid cars.[19] However, since the Leaf costs significantly"
            + " more than similar gasoline-powered vehicles, it may take a long time "
            + "for the fuel savings to cancel out the increased initial cost, even"
            + " after government incentives for plug-in electric vehicles. Some trims "
            + "initially came equipped with the telematics system CarWings. From 2011 "
            + "to 2015 this used the 2G cellular network. 2G has been decommissioned "
            + "in many areas, requiring an upgrade of the telematic control unit to use"
            + " newer networks. Rebranded NissanConnectEV in 2016, it is provided "
            + "free of charge to owners, if equipped, depending on year and trim. "
            + "As of 2017 it offers GPS data for routing, and for locating charging"
            + " stations. It may also provide two-way communication with the car which"
            + " enables remote control of the climate system, and monitoring of charging status.");%>
            <p><b>Text:</b> <%= lab5_1.GetText()%></p>
            <form action="./lab5" method="post" class="form-inline">
                <label for="x"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
            </form>
            <p><b>Most popular words:</b> <%= lab5_1.GetMostPopularWords()%></p>
            <p><b>Most popular sequences (4):</b>
                <%= lab5_1.MostPopularSequences(4)%></p>
            <%! Lab5_2 lab5_2 = new Lab5_2(20); %>
            <% lab5_2.InitList(); %>
            <p><b>List: </b><br/> <%= lab5_2.DisplayList()%></p>
            <%! String find = "model #19"; %>
            <% lab5_2.SortByStringField();%>
            <p><b>Sorted by string field: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.jumpSearch(find)%></p>
            <% lab5_2.SortByIntField();%>
            <p><b>Sorted by byte field: </b><br/> <%= lab5_2.DisplayList()%></p>
    </body>
</html>
