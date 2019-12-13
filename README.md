#environment and prerequest:
	
	Ubuntu 18.04
	
	Apache Jmeter 5.1.1

    Git realtive setting


#description and usage:

    By run_jmeter.sh, you can run a non-GUI mode jmeter script(allwebtest.jmx).

    $sh ./run_allwebtest.sh


    The whole test stucture:

   ![](https://raw.githubusercontent.com/k-eeer/jmetertest/master/testStructure.png?token=AI7IU734H6CN3KO2HIN5VZC56OAOY)


    It'll generate a result as .jtl file. You  can view it in  chart or graph  with jmeter  GUI listeners.

   ![](https://raw.githubusercontent.com/k-eeer/jmetertest/master/resultChart.png?token=AI7IU7YWXPVOBAHK3XU2PQC56OCOS)

   ![](https://raw.githubusercontent.com/k-eeer/jmetertest/master/stressGraph.png?token=AI7IU77D7WNPZAIE57ISECC56OBQS)



    You also can have a quick check those tests (stress test is not included)  are success or not.

    $less allwebtest.txt

   ![](https://raw.githubusercontent.com/k-eeer/jmetertest/master/quickResult.png?token=AI7IU72KIDVNC6GMYNXWEV256OB3G)





