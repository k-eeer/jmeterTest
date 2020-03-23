This scripts(run_jmeter.sh), you can run a demo of non_GUI mode jmeter script(allwebtest.jmx) ,which includes 
some test cases like integrate testiing, white box testing, etc. It will generate a typical Jmeter output(.jtl and .log file) 
and a .txt file to give a quick check tests are success or not (stress test is not included). It will also update changes to remote github repository.

# environment and prerequisites:
	
	Ubuntu 18.04
	Apache Jmeter 5.1.1
 	Git realtive setting


# description and usage:

    By run_jmeter.sh, you can run a non-GUI mode jmeter script(allwebtest.jmx).
	$sh ./run_allwebtest.sh


    The whole test list :

![](https://github.com/k-eeer/jmetertest/blob/master/illustration/testStructure.png)

and detail description of those tests are in ./illustration folder.


    It'll generate a result as .jtl file. You  can view it in  chart or graph  with jmeter  GUI listeners.

![](https://github.com/k-eeer/jmetertest/blob/master/illustration/sumReport.png)

![](https://github.com/k-eeer/jmetertest/blob/master/illustration/resultGraph.png)



    You also can have a quick check those tests (stress test is not included)  are success or not.

    $less quickChecResult.txt

![](https://github.com/k-eeer/jmetertest/blob/master/illustration/quickCheckResult.png)





