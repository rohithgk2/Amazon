*** Settings ***

Library  OperatingSystem

*** Variables ***

${output_directory} =  Outputs
${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  file_one.txt
${file_2} =  file_two.txt
${file_3} =  file_three.txt

*** Keywords ***

Create Base Directory
    create directory  ${output_directory}
    should exist  ${output_directory}

Create First Directory
    ${directory_path} =  join path  ${output_directory}  ${directory_1}
    create directory  ${directory_path}
    should exist  ${directory_path}

Create Second Directory
    ${directory_path} =  join path  ${output_directory}  ${directory_2}
    create directory  ${directory_path}
    should exist  ${directory_path}

Create First File
    ${file_path} =  join path  ${output_directory}  ${directory_1}  ${file_1}
    create file  ${file_path}
    should exist  ${file_path}

Create Second File
    ${file_path} =  join path  ${output_directory}  ${directory_2}  ${file_2}
    create file  ${file_path}
    should exist  ${file_path}

Create Third File
    ${file_path} =  join path  ${output_directory}  ${directory_2}  ${file_3}
    create file  ${file_path}
    should exist  ${file_path}

Move file Operation
    ${source_path} =  join path  ${output_directory}  ${directory_2}  ${file_3}
    ${destination_path} =  join path  ${output_directory}  ${directory_1}  ${file_3}
    move file  ${source_path}  ${destination_path}

Copy file operation
    ${source_path} =  join path  ${output_directory}  ${directory_1}  ${file_1}
    ${destination_path} =  join path  ${output_directory}  ${directory_2}  ${file_1}
    copy file  ${source_path}  ${destination_path}