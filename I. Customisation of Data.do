
* I. Specifications * 

cd "/Users/leopoldingenohl/Dropbox/Bachelorarbeit Kube/Input/First Data Sample"
use "/Users/leopoldingenohl/Dropbox/Bachelorarbeit Kube/Input/First Data Sample/First Data Sample unfiltered.dta"


* II. Generate new dummy variable for type of Filing  *
	
	* Dtype = 0 for all subjects *
	gen dtype=0

	*Dtype = 1 for all filers *
	replace dtype=1 if type == "Filed by"


* III. Customise data overview *
	
	* Data is sorted by the type of corporation (filer or subject) and the date of the filing *
	sort dtype fdate, stable
	
	* New order of variables *
	order type, after (fdate)
	order dtype, after (type)


* IV. Saving of customised data set *
save "First Data Sample Customised"

