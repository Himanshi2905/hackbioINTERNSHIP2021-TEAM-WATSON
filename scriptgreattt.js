const personalDetails={
	name:"Mojeed Adebayo",
	email:"adebayodayo33@gmail.com",
	slack_username:"@greattt",
	biostack:"Genomics",
	twitter_handle:"@adebayodayo221",
}


const str1=personalDetails.slack_username;
const str2=personalDetails.twitter_handle;

function hamming_distance(str1,str2){
	let i=0, count=0;
	while(i<str1.length){
		if (str1[i]!=str2[i])
			count++;
		i++
		
	}
	return count;
}


function printDetails(){
	console.log(personalDetails.name,personalDetails.email,personalDetails.slack_username,personalDetails.biostack,personalDetails.twitter_handle,hamming_distance(str1,str2));
}
printDetails();
