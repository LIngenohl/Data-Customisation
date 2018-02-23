* I. Specifications * 

cd "/Users/leopoldingenohl/Dropbox/Bachelorarbeit Kube/Input/First Data Sample"
use "First Data Sample customised.dta"


* II. Seperation of types *
	* Sample of subjects only - drop all observations regarding the filer *
	drop if dtype == 1
	
* III. New data sample of targets only *

	save "Sample Targets"
	
