import Cocoa

let fileManager = FileManager.default
var filePath = "/Users/Shared/MyFolder/testFile.txt"

//Create Folder
var folderName = "/Users/Shared/MyFolder"
do
{
    try fileManager.createDirectory(atPath : folderName, withIntermediateDirectories: true, attributes: nil)
    
    if(fileManager.isReadableFile(atPath: filePath))
    {
        print("The file is readable and can be written into")
        let fileText = "This is the rudimentary initial file data from xcode"
        let fileData = fileText.data(using:.utf8)
        fileManager.createFile(atPath: filePath, contents: fileData, attributes:nil)
    }
    else
    {
        print("NOt readable")
    }
    if(fileManager.isWritableFile(atPath: filePath))
    {
        print("Writable")
    }
    else
    {
        print("Not writable")
    }
    if(fileManager.isDeletableFile(atPath: filePath))
    {
        print("Deletable")
    }
    else
    {
        print("Not deletable")
    }
    if(fileManager.isExecutableFile(atPath: filePath))
    {
        print("Executable")
    }
    else
    {
        print("Not executable")
    }
}
catch let error
{
    print("Error : ", error.localizedDescription)
}

//Reading the file

do
{
    let content = try String(contentsOfFile: filePath,encoding:.utf8)
    print(content)
}
catch let error
{
    print("\(error.localizedDescription)")
}

//OverWrite Commands

do
{
    let newText = "\n\n This is the changed block \n\n Written by : Jishant Acharya"
    try newText.write(toFile: filePath, atomically: true, encoding: .utf8)
    let content = try String(contentsOfFile: filePath,encoding:.utf8)
    print(content)
}
catch let error
{
    print("\(error.localizedDescription)")
}

//Truncate the Contents

/*let fileHandler = FileHandle(forWritingAtPath: filePath) // Handles the contents
fileHandler?.truncateFile(atOffset: 10)

//File delete

do
{
    try fileManager.removeItem(atPath: filePath)
}
catch let error
{
    print("\(error.localizedDescription)")
}*/

//File Update
let fileHandler = FileHandle.init(forUpdatingAtPath: filePath)
var updateText = "\n Added file \n\n"
//fileHandler!.seekToEndOfFile()
fileHandler?.seek(toFileOffset: 30)
fileHandler!.write(updateText.data(using: .utf8)!)
let content = try String(contentsOfFile: filePath,encoding:.utf8)
print(content)
