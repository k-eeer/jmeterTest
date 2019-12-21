#environment and prerequest:
	
	Ubuntu 18.04
	Apache Jmeter 5.1.1
 	Git realtive setting


#description and usage:

    By run_jmeter.sh, you can run a non-GUI mode jmeter script(allwebtest.jmx).
	$sh ./run_allwebtest.sh


    The whole test stucture:

![](https://github.com/k-eeer/jmetertest/blob/master/testStructure.png)


    It'll generate a result as .jtl file. You  can view it in  chart or graph  with jmeter  GUI listeners.

![](https://github.com/k-eeer/jmetertest/blob/master/reaultChart.png)

![](https://github.com/k-eeer/jmetertest/blob/master/stressGraph.png)



    You also can have a quick check those tests (stress test is not included)  are success or not.

    $less allwebtest.txt

![](https://github.com/k-eeer/jmetertest/blob/master/quickResult.png)





