* I. Specifications * 

cd "/Users/leopoldingenohl/Dropbox/Bachelorarbeit Kube/Input/First Data Sample"
use "First Data Sample customised.dta"


* II. Seperation of types *
	* Sample of filers only - drop all observations regarding the subject *
	drop if dtype == 0
	
* III. New data sample of targets only *

	save "Sample Investors", replace
	
	
* IV. Summary Statistics of the Investors * 

* Earliest year * 

summ fdate, format
