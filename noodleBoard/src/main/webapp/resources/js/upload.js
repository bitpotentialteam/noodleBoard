/**
 * 
 */

function checkImageType(fileName) {
	var pattern = /jpg|gif|png|jpeg/i;
	return fileName.match(pattern);
}

function getFileInfo(fullName) {

	var fileName, imgsrc, getLink;
	var FileLink;

	if (checkImageType(fullName)) {
		imgsrc = "/web/displayFile?fileName=" + fullName;
		fileLink = fullName.substr(14);
		console.log(imgsrc);
		console.log(fileLink);

		var front = fullName.substr(0, 12);
		console.log(front);
		var end = fullName.substr(14);
		console.log(end);

		getLink = "/displayFile?fileName=" + front + end;
	} else {
		imgsrc = "/web/resources/bootstrap/img/file.png";
		fileLink = fullName.substr(12);
		getLink = "/web/displayFile?fileName=" + fullName;
	}
	fileName = fileLink.substr(fileLink.indexOf("_") + 1);

	return {
		fileName : fileName,
		imgsrc : imgsrc,
		getLink : getLink,
		fullName : fullName
	};

}