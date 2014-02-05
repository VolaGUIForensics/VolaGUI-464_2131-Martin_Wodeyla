��#Function for entire GUI

#requires -version 2

function GenerateForm {

########################################################################

# VolaGUI

# GUI for the Volatility Framework

# Dan Wodeyla & Casey Martin

# 11/3/13

# Version 1.0

# ---First relase, basic Volatility functionality in GUI form.

#See ReadME and Documentation for full details on VolaGUI

########################################################################



#Required Assemblies for GUI, .NET based

[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null

[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null





#All Form Objects

$volaGuiForm = New-Object System.Windows.Forms.Form

$alllTab = New-Object System.Windows.Forms.TabControl

$generalPage = New-Object System.Windows.Forms.TabPage

$csvCheckBox = New-Object System.Windows.Forms.CheckBox

$autoDetectBox = New-Object System.Windows.Forms.CheckBox

$custCommExec = New-Object System.Windows.Forms.Button

$customCommandLabel = New-Object System.Windows.Forms.Label

$customCommTBox = New-Object System.Windows.Forms.TextBox

$osDropDown = New-Object System.Windows.Forms.ComboBox

$osLabel = New-Object System.Windows.Forms.Label

$infoBoxGen = New-Object System.Windows.Forms.RichTextBox

$imageInfoBtn = New-Object System.Windows.Forms.Button

$fileBox = New-Object System.Windows.Forms.TextBox

$fileLabel = New-Object System.Windows.Forms.Label

$fileBrowse = New-Object System.Windows.Forms.Button

$processDllTab = New-Object System.Windows.Forms.TabPage

$dll_updateCommand = New-Object System.Windows.Forms.Button

$dll_Execute_Group = New-Object System.Windows.Forms.GroupBox

$dll_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$dll_Exec_Button = New-Object System.Windows.Forms.Button

$dll_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$dll_Descript_Group = New-Object System.Windows.Forms.GroupBox

$dll_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$dll_comm_group = New-Object System.Windows.Forms.GroupBox

$dll_com_drop = New-Object System.Windows.Forms.ComboBox

$dll_option3Check = New-Object System.Windows.Forms.CheckBox

$dll_option2Check = New-Object System.Windows.Forms.CheckBox

$dll_option1Check = New-Object System.Windows.Forms.CheckBox

$processMemPage = New-Object System.Windows.Forms.TabPage

$procmem_Execute_Group = New-Object System.Windows.Forms.GroupBox

$procmem_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$procmem_Exec_Button = New-Object System.Windows.Forms.Button

$procmem_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$procmem_Descript_Group = New-Object System.Windows.Forms.GroupBox

$procmem_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$procmem_comm_group = New-Object System.Windows.Forms.GroupBox

$promem_com_drop = New-Object System.Windows.Forms.ComboBox

$procmem_option2Check = New-Object System.Windows.Forms.CheckBox

$procmem_option1Check = New-Object System.Windows.Forms.CheckBox

$procmem_updateCommand = New-Object System.Windows.Forms.Button

$procmem_optionTBox2 = New-Object System.Windows.Forms.TextBox

$procmem_tBoxLabel2 = New-Object System.Windows.Forms.Label

$procmem_optionTBox1 = New-Object System.Windows.Forms.TextBox

$procmem_tBoxLabel1 = New-Object System.Windows.Forms.Label

$kernelPage = New-Object System.Windows.Forms.TabPage

$kernel_Execute_Group = New-Object System.Windows.Forms.GroupBox

$kernel_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$kernel_Exec_Button = New-Object System.Windows.Forms.Button

$kernel_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$kernel_Descript_Group = New-Object System.Windows.Forms.GroupBox

$kernel_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$kernel_Comm_Group = New-Object System.Windows.Forms.GroupBox

$kernel_Comm_Drop = New-Object System.Windows.Forms.ComboBox

$kernel_updateCommand = New-Object System.Windows.Forms.Button

$kernel_option3Check = New-Object System.Windows.Forms.CheckBox

$kernel_option2Check = New-Object System.Windows.Forms.CheckBox

$kernel_option1Check = New-Object System.Windows.Forms.CheckBox

$kernel_optionTBox3 = New-Object System.Windows.Forms.TextBox

$kernel_optionTBox2 = New-Object System.Windows.Forms.TextBox

$kernel_optionTBox1 = New-Object System.Windows.Forms.TextBox

$kernel_tBoxLabel3 = New-Object System.Windows.Forms.Label

$kernel_tBoxLabel2 = New-Object System.Windows.Forms.Label

$kernel_tBoxLabel1 = New-Object System.Windows.Forms.Label

$guiPage = New-Object System.Windows.Forms.TabPage

$gui_Execute_Group = New-Object System.Windows.Forms.GroupBox

$gui_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$gui_Exec_Button = New-Object System.Windows.Forms.Button

$gui_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$gui_Descript_Group = New-Object System.Windows.Forms.GroupBox

$gui_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$gui_Comm_Group = New-Object System.Windows.Forms.GroupBox

$gui_Comm_Drop = New-Object System.Windows.Forms.ComboBox

$gui_updateCommand = New-Object System.Windows.Forms.Button

$gui_option1Check = New-Object System.Windows.Forms.CheckBox

$gui_optionTBox1 = New-Object System.Windows.Forms.TextBox

$gui_tBoxLabel1 = New-Object System.Windows.Forms.Label

$netPage = New-Object System.Windows.Forms.TabPage

$net_Execute_Group = New-Object System.Windows.Forms.GroupBox

$net_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$net_Exec_Button = New-Object System.Windows.Forms.Button

$net_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$net_Descript_Group = New-Object System.Windows.Forms.GroupBox

$net_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$net_Comm_Group = New-Object System.Windows.Forms.GroupBox

$net_Comm_Drop = New-Object System.Windows.Forms.ComboBox

$net_option1Check = New-Object System.Windows.Forms.CheckBox

$net_optionTBox1 = New-Object System.Windows.Forms.TextBox

$net_tBoxLabel1 = New-Object System.Windows.Forms.Label

$net_updateCommand = New-Object System.Windows.Forms.Button

$registryPage = New-Object System.Windows.Forms.TabPage

$reg_Execute_Group = New-Object System.Windows.Forms.GroupBox

$reg_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$reg_Exec_Button = New-Object System.Windows.Forms.Button

$reg_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$reg_Descript_Group = New-Object System.Windows.Forms.GroupBox

$reg_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$reg_Comm_Group = New-Object System.Windows.Forms.GroupBox

$reg_Comm_Drop = New-Object System.Windows.Forms.ComboBox

$reg_option3Check = New-Object System.Windows.Forms.CheckBox

$reg_option2Check = New-Object System.Windows.Forms.CheckBox

$reg_option1Check = New-Object System.Windows.Forms.CheckBox

$reg_updateCommand = New-Object System.Windows.Forms.Button

$reg_optionTBox3 = New-Object System.Windows.Forms.TextBox

$reg_optionTBox2 = New-Object System.Windows.Forms.TextBox

$reg_optionTBox1 = New-Object System.Windows.Forms.TextBox

$reg_tBoxLabel3 = New-Object System.Windows.Forms.Label

$reg_tBoxLabel2 = New-Object System.Windows.Forms.Label

$reg_tBoxLabel1 = New-Object System.Windows.Forms.Label

$malwarePage = New-Object System.Windows.Forms.TabPage

$mal_Execute_Group = New-Object System.Windows.Forms.GroupBox

$mal_Comm_Output = New-Object System.Windows.Forms.RichTextBox

$mal_Exec_Button = New-Object System.Windows.Forms.Button

$mal_Comm_StringBox = New-Object System.Windows.Forms.TextBox

$mal_Descript_Group = New-Object System.Windows.Forms.GroupBox

$mal_Descript_Text = New-Object System.Windows.Forms.RichTextBox

$mal_Comm_Group = New-Object System.Windows.Forms.GroupBox

$mal_Comm_Drop = New-Object System.Windows.Forms.ComboBox

$mal_option2Check = New-Object System.Windows.Forms.CheckBox

$mal_option1Check = New-Object System.Windows.Forms.CheckBox

$mal_optionTBox2 = New-Object System.Windows.Forms.TextBox

$mal_tBoxLabel2 = New-Object System.Windows.Forms.Label

$mal_optionTBox1 = New-Object System.Windows.Forms.TextBox

$mal_tBoxLabel1 = New-Object System.Windows.Forms.Label

$mal_updateCommand = New-Object System.Windows.Forms.Button

$openFileDialog1 = New-Object System.Windows.Forms.OpenFileDialog

$statusBar = New-Object System.Windows.Forms.StatusBar

$dll_optionTBox3 = New-Object System.Windows.Forms.TextBox

$dll_tBoxLabel3 = New-Object System.Windows.Forms.Label

$dll_optionTBox2 = New-Object System.Windows.Forms.TextBox

$dll_tBoxLabel2 = New-Object System.Windows.Forms.Label

$dll_tBoxLabel1 = New-Object System.Windows.Forms.Label

$dll_optionTBox1 = New-Object System.Windows.Forms.TextBox

$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState



$selectedImage = ""

$selectedProfile = ""

$standardCommand = ""



##----------------------------------------------

## All code used to interact with any of the GUI objects, when an event occurs executed code comes from one of these sections.

## Sections of code ending in "Execute" occur when excute button is clicked on the respective tab

## Sections of code ending in "CommandChanged" occur when a different item is selected from the dropdown

## CommandChanged sections contain logic to pull option information from config file.

## Based on these supplied options, GUI elements will change and become visible. 

##----------------------------------------------

##Executes user entered commands

$customCommandExecute = 

{

    $custCommand = $customCommTBox.Text

    $infoBoxGen.Text += "`n`nRunning custom command: $custCommand `n`n"

    $date = Get-Date

    "Custom Command $custCommand executed $date" >> "$env:APPDATA\VolaGUI\activity.log"  ##Logging##

    if($csvCheckBox.Checked) { $custCommand >> volagui.txt }

    $custCommand += " 1>&2"

    $output = cmd /c "$custCommand" 2>&1 | %{"$_"} ##Command Execution

    Foreach($ln in $output) {  $infoBoxGen.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$outputToFile = 

{

    if($csvCheckBox.Checked){$infoBoxGen.Text += "`nNow outputting all commands to volagui.txt"}

    $date = Get-Date

    "VolaGUI output to file status changed: $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

}

$regCommandChanged= 

{

    $reg_option3Check.Visible = $false

    $reg_option2Check.Visible = $false

    $reg_option1Check.Visible = $false

    $reg_optionTBox3.Visible = $false

    $reg_optionTBox2.Visible = $false

    $reg_optionTBox1.Visible = $false

    $reg_tBoxLabel3.Visible = $false

    $reg_tBoxLabel2.Visible = $false

    $reg_tBoxLabel1.Visible = $false

    $reg_option3Check.Checked = $false

    $reg_option2Check.Checked = $false

    $reg_option1Check.Checked = $false

    $reg_optionTBox3.Enabled = $false

    $reg_optionTBox2.Enabled = $false

    $reg_optionTBox1.Enabled = $false

    $tmp = $reg_Comm_Drop.Text

    

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $reg_Descript_Text.Text = $lineParts[1] 

            if( $lineParts[2].contains("K") ) ##Registry Key option

            {

                $reg_tBoxLabel1.Text = "Key" 

                $reg_tBoxLabel1.Visible = $true

                $reg_optionTBox1.Visible = $true

                $reg_optionTBox1.Text = "-K "

                $reg_option1Check.Visible = $true  

            }  

            if( $lineParts[2].contains("o") ) ##Offset to desired registry hive

            {

                $reg_tBoxLabel2.Text = "Reg Hive Offset" 

                $reg_tBoxLabel2.Visible = $true

                $reg_optionTBox2.Visible = $true

                $reg_optionTBox2.Text = "-o "

                $reg_option2Check.Visible = $true 

            }

            if( $lineParts[2].contains("y") ) ##Registry Key option

            {

                $reg_tBoxLabel1.Text = "SYSTEM Virt Addr" 

                $reg_tBoxLabel1.Visible = $true

                $reg_optionTBox1.Visible = $true

                $reg_optionTBox1.Text = "-y "

                $reg_option1Check.Visible = $true  

            }  

            if( $lineParts[2].contains("s") ) ##Offset to desired registry hive

            {

                if($tmp -eq "hashdump") { $reg_tBoxLabel2.Text = "SAM Virt Addr" }

                else { $reg_tBoxLabel2.Text = "Security Virt Addr" }

                $reg_tBoxLabel2.Visible = $true

                $reg_optionTBox2.Visible = $true

                $reg_optionTBox2.Text = "-s "

                $reg_option2Check.Visible = $true 

            }                      

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $reg_tBoxLabel1.Text = "No Options" 

                $reg_tBoxLabel1.Visible = $true

            }

            

        }##End if

    }##End ForEach

    $reg_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $reg_Comm_Drop.Text



}



$guiCommandChanged= 

{

    $gui_option1Check.Visible = $false

    $gui_optionTBox1.Visible = $false

    $gui_tBoxLabel1.Visible = $false

    $gui_option1Check.Checked = $false

    $gui_optionTBox1.Enabled = $false

    $tmp = $gui_Comm_Drop.Text

    

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $gui_Descript_Text.Text = $lineParts[1]

            if( $lineParts[2].contains("v") ) ##verbose Option

            {

                $gui_tBoxLabel1.Text = "Verbose" 

                $gui_tBoxLabel1.Visible = $true

                $gui_optionTBox1.Visible = $true

                $gui_optionTBox1.Text = "-v"

                $gui_option1Check.Visible = $true

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $gui_tBoxLabel1.Text = "No Options" 

                $gui_tBoxLabel1.Visible = $true

            }

        }#if end

    }##ForEach End

    $gui_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $gui_Comm_Drop.Text

}



$regExecute= 

{

    $regCommand = $reg_Comm_StringBox.Text

    $date = Get-Date

    "Registry command: $regCommand executed $date" >>"$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $regCommand >> volagui.txt}

    $regCommand += " 1>&2"

    $output = cmd /c "$regCommand" 2>&1 | %{"$_"} ##Command Execution

    $reg_Comm_Output.Text = ""

    Foreach($ln in $output) {  $reg_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

    

}



$netExecute= 

{

    $netCommand = $net_Comm_StringBox.Text

    $date = Get-Date

    "Network command: $netCommand executed $date" >>"$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $netCommand >> volagui.txt}

    $netCommand += " 1>&2"

    $output = cmd /c "$netCommand" 2>&1 | %{"$_"} ##Command Execution

    $net_Comm_Output.Text = ""

    Foreach($ln in $output) {  $net_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$malExecute= 

{

    $malCommand = $mal_Comm_StringBox.Text

    $date = Get-Date

    "Malware command: $malCommand executed $date" >>"$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $malCommand >> volagui.txt}

    $malCommand += " 1>&2"

    $output =cmd /c "$malCommand" 2>&1 | %{"$_"} ##Command Execution

    

    $mal_Comm_Output.Text = ""

    Foreach($ln in $output) {  $mal_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$dllExecute= 

{

    $dllCommand = $dll_Comm_StringBox.Text

    $date = Get-Date

    "Dll command: $dllCommand executed $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $dllCommand >> volagui.txt}

    $dllCommand += " 1>&2"

    $output = cmd /c "$dllCommand" 2>&1 | %{"$_"} ##Command Execution

     

    $dll_Comm_Output.Text = ""

    Foreach($ln in $output) {  $dll_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$autoDetectCheckedChecked= 

{

    ####Not currently used####



}



$malCommandChanged= 

{

    $mal_option2Check.Visible = $false

    $mal_option1Check.Visible = $false

    $mal_optionTBox2.Visible = $false

    $mal_optionTBox1.Visible = $false

    $mal_tBoxLabel2.Visible = $false

    $mal_tBoxLabel1.Visible = $false

    $mal_option2Check.Checked = $false

    $mal_option1Check.Checked = $false

    $mal_optionTBox2.Enabled = $false

    $mal_optionTBox1.Enabled = $false

    $tmp = $mal_Comm_Drop.Text

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $mal_Descript_Text.Text = $lineParts[1] 

            if( $lineParts[2].contains("D") ) ##DumpDir Option

            {

                $mal_tBoxLabel2.Text = "Dump DIR" 

                $mal_tBoxLabel2.Visible = $true

                $mal_optionTBox2.Visible = $true

                $mal_optionTBox2.Text = "-D "

                $mal_option2Check.Visible = $true    

            }

            if( $lineParts[2].contains("p") ) ##Proccess ID Option

            {

                $mal_tBoxLabel1.Text = "Process ID" 

                $mal_tBoxLabel1.Visible = $true

                $mal_optionTBox1.Visible = $true

                $mal_optionTBox1.Text = "-p "

                $mal_option1Check.Visible = $true           

            }

            if( $lineParts[2].contains("v") ) ##verbose Option

            {

                $mal_tBoxLabel1.Text = "Verbose" 

                $mal_tBoxLabel1.Visible = $true

                $mal_optionTBox1.Visible = $true

                $mal_optionTBox1.Text = "-v"

                $mal_option1Check.Visible = $true    

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $mal_tBoxLabel1.Text = "No Options" 

                $mal_tBoxLabel1.Visible = $true

            }                                    

        }##End If

    }##End ForEach

    $mal_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $mal_Comm_Drop.Text

}



$handler_form1_Load= 

{

    $infoBoxGen.Text = "Using Volatility EXE located at $standardCommand `n"



}



$dllCommandChanged= 

{

    $dll_tBoxLabel1.Visible = $false

    $dll_optionTBox1.Visible = $false

    $dll_tBoxLabel2.Visible = $false

    $dll_optionTBox2.Visible = $false

    $dll_tBoxLabel3.Visible = $false

    $dll_optionTBox3.Visible = $false

    $dll_optionTBox1.Text = ""

    $dll_optionTBox2.Text = ""

    $dll_optionTBox3.Text = ""

    $dll_option1Check.Visible = $false

    $dll_option2Check.Visible = $false

    $dll_option3Check.Visible = $false

    $dll_option1Check.Checked = $false

    $dll_option2Check.Checked = $false

    $dll_option3Check.Checked = $false

    $tmp = $dll_com_drop.Text

    

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $dll_Descript_Text.Text = $lineParts[1] 

            

            if( $lineParts[2].contains("p") ) ##Proccess ID Option

            {

                $dll_tBoxLabel1.Text = "Process ID" 

                $dll_tBoxLabel1.Visible = $true

                $dll_optionTBox1.Visible = $true

                $dll_optionTBox1.Text = "-p "

                $dll_option1Check.Visible = $true

            }

            if( $lineParts[2].contains("q") ) ##Offset Option

            {

                $dll_tBoxLabel2.Text = "Offset" 

                $dll_tBoxLabel2.Visible = $true

                $dll_optionTBox2.Visible = $true

                $dll_optionTBox2.Text = "--offset="

                $dll_option2Check.Visible = $true

            }

            if( $lineParts[2].contains("Q") ) ##Physical Offset Option

            {

                $dll_tBoxLabel2.Text = "Offset" 

                $dll_tBoxLabel2.Visible = $true

                $dll_optionTBox2.Visible = $true

                $dll_option2Check.Visible = $true

                $dll_optionTBox2.Text = "--physical-offset="

            }

            if( $lineParts[2].contains("t") ) ##filter Option

            {

                $dll_tBoxLabel3.Text = "Filter" 

                $dll_tBoxLabel3.Visible = $true

                $dll_optionTBox3.Visible = $true

                $dll_option3Check.Visible = $true

                $dll_optionTBox3.Text = "-t "

            }

            if( $lineParts[2].contains("M") ) ##max history Option

            { 

                $dll_tBoxLabel1.Text = "Max History" 

                $dll_tBoxLabel1.Visible = $true

                $dll_optionTBox1.Visible = $true

                $dll_option1Check.Visible = $true

                $dll_optionTBox1.Text = "--max_history="

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $dll_tBoxLabel1.Text = "No Options" 

                $dll_tBoxLabel1.Visible = $true

            }

        }###if

        

               

        

    }##ForEach Close

        



    $dll_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $dll_com_drop.Text

      

    

}



$netCommandChanged= 

{

    $net_option1Check.Visible = $false

    $net_optionTBox1.Visible = $false

    $net_tBoxLabel1.Visible = $false

    $net_option1Check.Checked = $false

    $net_optionTBox1.Enabled = $false

    $tmp = $net_Comm_Drop.Text

    

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $net_Descript_Text.Text = $lineParts[1] 

            if( $lineParts[2].contains("P") ) ##Proccess ID Option

            {

                $net_tBoxLabel1.Text = "Physical Addr"

                $net_tBoxLabel1.Visible = $true

                $net_optionTBox1.Visible = $true

                $net_option1Check.Visible = $true

                $net_optionTBox1.Text = "-P"       

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $net_tBoxLabel1.Text = "No Options" 

                $net_tBoxLabel1.Visible = $true

            }            

        }##If end

    }##ForEach End

    

    $net_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $net_Comm_Drop.Text

}



$kernelExecute= 

{

    $kernelCommand = $kernel_Comm_StringBox.Text

    $date = Get-Date

    "Kernel command: $kernelCommand executed $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $kernelCommand >> volagui.txt}

    $kernelCommand += " 1>&2"

    $output = cmd /c "$kernelCommand" 2>&1 | %{"$_"} ##Command Execution

    

    $kernel_Comm_Output.Text = ""

    Foreach($ln in $output) {  $kernel_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$guiExecute= 

{

    $guiCommand = $gui_Comm_StringBox.Text

    $date = Get-Date

    "GUI command: $guiCommand executed $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $guiCommand >> volagui.txt}

    $guiCommand += " 1>&2"

    $output = cmd /c "$guiCommand" 2>&1 | %{"$_"} ##Command Execution

    $gui_Comm_Output.Text = ""

    Foreach($ln in $output) {  $gui_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}

}



$fileBrowseClicked= 

{

    $openFileDialog1.ShowHelp = $true

    $openFileDialog1.ShowDialog()

}



$kernelCommandChanged= 

{

    $tmp = $kernel_Comm_Drop.Text

    $kernel_option3Check.Visible = $false

    $kernel_option2Check.Visible = $false

    $kernel_option1Check.Visible = $false

    $kernel_optionTBox3.Visible = $false

    $kernel_optionTBox2.Visible = $false

    $kernel_optionTBox1.Visible = $false

    $kernel_tBoxLabel3.Visible = $false

    $kernel_tBoxLabel2.Visible = $false

    $kernel_tBoxLabel1.Visible = $false

    $kernel_option3Check.Checked = $false

    $kernel_option2Check.Checked = $false

    $kernel_option1Check.Checked = $false

    $kernel_optionTBox3.Enabled = $false

    $kernel_optionTBox2.Enabled = $false

    $kernel_optionTBox1.Enabled = $false

    

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $kernel_Descript_Text.Text = $lineParts[1]

            if( $lineParts[2].contains("P") ) ##phyical address Option

            {

                $kernel_tBoxLabel1.Text = "Physical Addr"

                $kernel_tBoxLabel1.Visible = $true

                $kernel_optionTBox1.Visible = $true

                $kernel_option1Check.Visible = $true

                $kernel_optionTBox1.Text = "-P"

            }

            if( $lineParts[2].contains("D") ) ##DumpDiR Option

            {

                $kernel_tBoxLabel1.Text = "Dump Dir"

                $kernel_tBoxLabel1.Visible = $true

                $kernel_optionTBox1.Visible = $true

                $kernel_option1Check.Visible = $true

                $kernel_optionTBox1.Text = "-D "                

            }

            if( $lineParts[2].contains("X") ) ##Regex Option

            {

                $kernel_tBoxLabel2.Text = "Regex"

                $kernel_tBoxLabel2.Visible = $true

                $kernel_optionTBox2.Visible = $true

                $kernel_option2Check.Visible = $true

                $kernel_optionTBox2.Text = "regex="               

            }

            if( $lineParts[2].contains("B") ) ##Base Address Option

            {

                $kernel_tBoxLabel3.Text = "Base Addr"

                $kernel_tBoxLabel3.Visible = $true

                $kernel_optionTBox3.Visible = $true

                $kernel_option3Check.Visible = $true

                $kernel_optionTBox3.Text = "--base="             

            }

            if( $lineParts[2].contains("s") ) ##Silent mutex Option

            {

                $kernel_tBoxLabel1.Text = "Only named Mutex"

                $kernel_tBoxLabel1.Visible = $true

                $kernel_optionTBox1.Visible = $true

                $kernel_option1Check.Visible = $true

                $kernel_optionTBox1.Text = "-s" 

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $kernel_tBoxLabel1.Text = "No Options" 

                $kernel_tBoxLabel1.Visible = $true

            }

        }##if close

    }##ForEach Close

    $kernel_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $kernel_Comm_Drop.Text

}



$handler_openFileDialog1_FileOk= 

{

    $selectedImage = $openFileDialog1.FileName

    $fileBox.Text = $openFileDialog1.FileName

    $date = Get-Date

    "Image file $selectedImage selected: $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

    $statusBar.Text = "Image: $selectedImage      Profile: $selectedProfile"

    $OpenFileDialog1.initialDirectory = $selectedImage

    $openFileDialog1.FileName = ""

    $customCommTBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile "

}



$imageInfoClick = 

{

    if($fileBox.Text -ne "")

    {

        $date = Get-Date

        $infoBoxGen.Text += "Gathering information on the image`n"

        $cmd = "$standardCommand -f $selectedImage imageinfo 2>&1"

        "Gathering info on memory image: $cmd $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

        $results = invoke-expression $cmd ##Command Execution

        Foreach($ln in $results) {  $infoBoxGen.Text += "`n$ln" }    

    }

    else {$infoBoxGen.Text = "Please select file first" }

}





$procMemCommandChanged= 

{

    $procmem_tBoxLabel1.Visible = $false

    $procmem_optionTBox1.Visible = $false

    $procmem_tBoxLabel2.Visible = $false

    $procmem_optionTBox2.Visible = $false

    $procmem_option1Check.Visible = $false

    $procmem_option2Check.Visible = $false

    $procmem_option1Check.Checked = $false

    $procmem_option2Check.Checked = $false

    $procmem_optionTBox1.Text = ""

    $procmem_optionTBox2.Text = ""

    $procmem_optionTBox1.Enabled = $false

    $procmem_optionTBox2.Enabled = $false



    $tmp = $promem_com_drop.Text

    ForEach($line in $config)

    {

        $lineParts = $line.Split(":")

        if($lineParts[0] -eq $tmp) 

        { 

            $procmem_Descript_Text.Text = $lineParts[1] 

            if( $lineParts[2].contains("p") ) ##Proccess ID Option

            {

                $procmem_tBoxLabel1.Text = "Process ID" 

                $procmem_tBoxLabel1.Visible = $true

                $procmem_optionTBox1.Visible = $true

                $procmem_optionTBox1.Text = "-p "

                $procmem_option1Check.Visible = $true           

            }

            if( $lineParts[2].contains("D") ) ##DumpDiR Option

            {

                $procmem_tBoxLabel2.Text = "Dump DIR" 

                $procmem_tBoxLabel2.Visible = $true

                $procmem_optionTBox2.Visible = $true

                $procmem_optionTBox2.Text = "-D "

                $procmem_option2Check.Visible = $true    

            }

            if( $lineParts[2].contains("e") ) ##EventLog Option

            {

                $procmem_tBoxLabel1.Text = "Dump raw" 

                $procmem_tBoxLabel1.Visible = $true

                $procmem_optionTBox1.Visible = $true

                $procmem_optionTBox1.Text = "--save-evt"

                $procmem_option1Check.Visible = $true    

            }

            if( $lineParts[2].contains("*") ) ##No Options

            {

                $procmem_tBoxLabel1.Text = "No Options" 

                $procmem_tBoxLabel1.Visible = $true

            }

        }

    }

        

    $procmem_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $promem_com_drop.Text

}



$procMemExecute= 

{

    $procmemCommand = $procmem_Comm_StringBox.Text

    $date = Get-Date

    "Process Memory command: $procmemCommand executed $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

    if($csvCheckBox.Checked) { $procmemCommand >> volagui.txt}

    $procmemCommand += " 1>&2"

    $output = cmd /c "$procmemCommand" 2>&1 | %{"$_"} ##Command Execution

    $procmem_Comm_Output.Text = ""

    Foreach($ln in $output) {  $procmem_Comm_Output.Text += "`n$ln" }

    if($csvCheckBox.Checked) { $output >> volagui.txt}



}



$profileChanged=

{

     $selectedProfile = $osDropDown.Text

     $date = Get-Date

     "Profile Changed to $selectedProfile $date" >> "$env:APPDATA\VolaGUI\activity.log" ##Logging##

     $statusBar.Text = "Image: $selectedImage      Profile: $selectedProfile"

     $customCommTBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile "

}

#####Update Command Buttons#######

$dllUpdateCommand = 

{

    $tempString = ""

    if( $dll_optionTBox3.Enabled) { $tempString = $tempString + $dll_optionTBox3.Text + " " }

    if( $dll_optionTBox2.Enabled) { $tempString = $tempString + $dll_optionTBox2.Text + " " }

    if( $dll_optionTBox1.Enabled) { $tempString = $tempString + $dll_optionTBox1.Text + " " }

    

    $dll_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $dll_com_drop.Text + " " + $tempString

}



$procmemUpdateCommand =

{

    $tempString = ""

    if( $procmem_optionTBox2.Enabled) { $tempString = $tempString + $procmem_optionTBox2.Text + " " }

    if( $procmem_optionTBox1.Enabled) { $tempString = $tempString + $procmem_optionTBox1.Text + " " }

    

    $procmem_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $promem_com_drop.Text + " " + $tempString

}



$kernelUpdateCommand = 

{

    $tempString = ""

    if( $kernel_optionTBox3.Enabled) { $tempString = $tempString + $kernel_optionTBox3.Text + " " }

    if( $kernel_optionTBox2.Enabled) { $tempString = $tempString + $kernel_optionTBox2.Text + " " }

    if( $kernel_optionTBox1.Enabled) { $tempString = $tempString + $kernel_optionTBox1.Text + " " }

    

    $kernel_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $kernel_Comm_Drop.Text + " " + $tempString

}



$guiUpdateCommand = 

{

    $tempString = ""

    if( $gui_optionTBox1.Enabled) { $tempString = $tempString + $gui_optionTBox1.Text + " " }

    

    $gui_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $gui_Comm_Drop.Text + " " + $tempString

}



$netUpdateCommand = 

{

    $tempString = ""

    if( $net_optionTBox1.Enabled) { $tempString = $tempString + $net_optionTBox1.Text + " " }

    

    $net_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $net_Comm_Drop.Text + " " + $tempString

}



$regUpdateCommand = 

{

    $tempString = ""

    if( $reg_optionTBox3.Enabled) { $tempString = $tempString + $reg_optionTBox3.Text + " " }

    if( $reg_optionTBox2.Enabled) { $tempString = $tempString + $reg_optionTBox2.Text + " " }

    if( $reg_optionTBox1.Enabled) { $tempString = $tempString + $reg_optionTBox1.Text + " " }

    

    $reg_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $reg_Comm_Drop.Text + " " + $tempString

}



$malUpdateCommand =

{

    $tempString = ""

    if( $mal_optionTBox2.Enabled) { $tempString = $tempString + $mal_optionTBox2.Text + " " }

    if( $mal_optionTBox1.Enabled) { $tempString = $tempString + $mal_optionTBox1.Text + " " }

    

    $mal_Comm_StringBox.Text = "$standardCommand -f $selectedImage --profile=$selectedProfile " + $mal_Comm_Drop.Text + " " + $tempString

}

#######################



$OnLoadForm_StateCorrection=

{#Correct the initial state of the form to prevent the .Net maximized form issue

	$volaGuiForm.WindowState = $InitialFormWindowState

}



#----------------------------------------------

# The following code is responsible for creating all GUI elements on screen

# Each element is its own object, that contains different items and functions

# Most of this code is generally the same, just with different names depending on its location

# Font, position, GUI text, etc set in this code block

#----------------------------------------------



$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 666

$System_Drawing_Size.Width = 564

$volaGuiForm.ClientSize = $System_Drawing_Size

$volaGuiForm.DataBindings.DefaultDataSourceUpdateMode = 0

$volaGuiForm.Name = "volaGuiForm"

$volaGuiForm.Text = "VolaGUI"

$volaGuiForm.add_Load($handler_form1_Load) ##Code executed at form load##



$statusBar.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 0

$System_Drawing_Point.Y = 644

$statusBar.Location = $System_Drawing_Point

$statusBar.Name = "statusBar"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 22

$System_Drawing_Size.Width = 564

$statusBar.Size = $System_Drawing_Size

$statusBar.TabIndex = 1

$statusBar.Text = "Image: N/A `tProfile: N/A"



$volaGuiForm.Controls.Add($statusBar)



##Tab Creation

$alllTab.Anchor = 15

$alllTab.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 13

$System_Drawing_Point.Y = 13

$alllTab.Location = $System_Drawing_Point

$alllTab.Name = "alllTab"

$alllTab.SelectedIndex = 0

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 623

$System_Drawing_Size.Width = 539

$alllTab.Size = $System_Drawing_Size

$alllTab.TabIndex = 0



$volaGuiForm.Controls.Add($alllTab)

$generalPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$generalPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$generalPage.Location = $System_Drawing_Point

$generalPage.Name = "generalPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$generalPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$generalPage.Size = $System_Drawing_Size

$generalPage.TabIndex = 0

$generalPage.Text = "General"



$alllTab.Controls.Add($generalPage) ##Adding general tab



##All GUI objects on General Tab

$custCommExec.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 391

$System_Drawing_Point.Y = 396

$custCommExec.Location = $System_Drawing_Point

$custCommExec.Name = "custCommExec"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 75

$custCommExec.Size = $System_Drawing_Size

$custCommExec.TabIndex = 11

$custCommExec.Text = "Execute"

$custCommExec.UseVisualStyleBackColor = $True

$custCommExec.add_Click($customCommandExecute)



$generalPage.Controls.Add($custCommExec)



$customCommandLabel.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 371

$customCommandLabel.Location = $System_Drawing_Point

$customCommandLabel.Name = "customCommandLabel"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$customCommandLabel.Size = $System_Drawing_Size

$customCommandLabel.TabIndex = 10

$customCommandLabel.Text = "Custom Command"



$generalPage.Controls.Add($customCommandLabel)



$customCommTBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 400

$customCommTBox.Location = $System_Drawing_Point

$customCommTBox.Name = "customCommTBox"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 377

$customCommTBox.Size = $System_Drawing_Size

$customCommTBox.TabIndex = 9



$generalPage.Controls.Add($customCommTBox)



$imageInfoBtn.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 319

$imageInfoBtn.Location = $System_Drawing_Point

$imageInfoBtn.Name = "imageInfoBtn"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 77

$imageInfoBtn.Size = $System_Drawing_Size

$imageInfoBtn.TabIndex = 8

$imageInfoBtn.Text = "Image Info"

$imageInfoBtn.UseVisualStyleBackColor = $True

$imageInfoBtn.add_Click($imageInfoClick)



$generalPage.Controls.Add($imageInfoBtn)



##Code for CSV Checkbox

$csvCheckBox.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 361

$System_Drawing_Point.Y = 279

$csvCheckBox.Location = $System_Drawing_Point

$csvCheckBox.Name = "csvCheckBox"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 104

$csvCheckBox.Size = $System_Drawing_Size

$csvCheckBox.TabIndex = 7

$csvCheckBox.Text = "Output to file"

$csvCheckBox.UseVisualStyleBackColor = $True

$csvCheckBox.add_CheckedChanged($outputToFile)

$generalPage.Controls.Add($csvCheckBox) 



##Code for auto detect checkbox

$autoDetectBox.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 258

$System_Drawing_Point.Y = 280

$autoDetectBox.Location = $System_Drawing_Point

$autoDetectBox.Name = "autoDetectBox"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 104

$autoDetectBox.Size = $System_Drawing_Size

$autoDetectBox.TabIndex = 6

$autoDetectBox.Text = "AutoDetect"

$autoDetectBox.UseVisualStyleBackColor = $True

$autoDetectBox.add_CheckedChanged($autoDetectCheckedChecked) ##Event occurs, executes code from the previous section##

$autoDetectBox.Visible = $false



$generalPage.Controls.Add($autoDetectBox)



##The OS dropdown Code

$osDropDown.DataBindings.DefaultDataSourceUpdateMode = 0

$osDropDown.DropDownStyle = 2

$osDropDown.FormattingEnabled = $True

$osDropDown.Items.Add("")|Out-Null

$osDropDown.Items.Add("WinXPSP1x64")|Out-Null

$osDropDown.Items.Add("WinXPSP2x64")|Out-Null

$osDropDown.Items.Add("VistaSP0x64")|Out-Null

$osDropDown.Items.Add("VistaSP1x64")|Out-Null

$osDropDown.Items.Add("VistaSP2x64 ")|Out-Null

$osDropDown.Items.Add("Win7SP0x64")|Out-Null

$osDropDown.Items.Add("Win7SP1x64")|Out-Null

$osDropDown.Items.Add("Win2003SP1x64")|Out-Null

$osDropDown.Items.Add("Win2003SP2x64")|Out-Null

$osDropDown.Items.Add("Win2008SP1x64")|Out-Null

$osDropDown.Items.Add("Win2008SP2x64")|Out-Null

$osDropDown.Items.Add("Win2008R2SP0x64")|Out-Null

$osDropDown.Items.Add("Win2008R2SP1x64")|Out-Null

$osDropDown.Items.Add("WinXPSP2x86")|Out-Null

$osDropDown.Items.Add("WinXPSP3x86")|Out-Null

$osDropDown.Items.Add("VistaSP0x86")|Out-Null

$osDropDown.Items.Add("VistaSP1x86")|Out-Null

$osDropDown.Items.Add("VistaSP2x86")|Out-Null

$osDropDown.Items.Add("Win7SP0x86")|Out-Null

$osDropDown.Items.Add("Win7SP1x86")|Out-Null

$osDropDown.Items.Add("Win2003SP0x86")|Out-Null

$osDropDown.Items.Add("Win2003SP1x86")|Out-Null

$osDropDown.Items.Add("Win2003SP2x86")|Out-Null

$osDropDown.Items.Add("Win2008SP1x86")|Out-Null

$osDropDown.Items.Add("Win2008SP2x86")|Out-Null

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 282

$osDropDown.Location = $System_Drawing_Point

$osDropDown.Name = "osDropDown"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 226

$osDropDown.Size = $System_Drawing_Size

$osDropDown.TabIndex = 5

$osDropDown.add_SelectionChangeCommitted($profileChanged)

$generalPage.Controls.Add($osDropDown)



$osLabel.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 255

$osLabel.Location = $System_Drawing_Point

$osLabel.Name = "osLabel"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 65

$osLabel.Size = $System_Drawing_Size

$osLabel.TabIndex = 4

$osLabel.Text = "Image OS"



$generalPage.Controls.Add($osLabel)



$infoBoxGen.Anchor = 13

$infoBoxGen.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$infoBoxGen.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$infoBoxGen.Location = $System_Drawing_Point

$infoBoxGen.Name = "infoBoxGen"

$infoBoxGen.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 185

$System_Drawing_Size.Width = 518

$infoBoxGen.Size = $System_Drawing_Size

$infoBoxGen.TabIndex = 3

$infoBoxGen.Text = ""

$infoBoxGen.WordWrap = $False



$generalPage.Controls.Add($infoBoxGen)



$fileBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 221

$fileBox.Location = $System_Drawing_Point

$fileBox.Name = "fileBox"

$fileBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 377

$fileBox.Size = $System_Drawing_Size

$fileBox.TabIndex = 2



$generalPage.Controls.Add($fileBox)



$fileLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$fileLabel.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",8.25,0,3,1)



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 3

$System_Drawing_Point.Y = 195

$fileLabel.Location = $System_Drawing_Point

$fileLabel.Name = "fileLabel"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 58

$fileLabel.Size = $System_Drawing_Size

$fileLabel.TabIndex = 1

$fileLabel.Text = "Image File"



$generalPage.Controls.Add($fileLabel)





$fileBrowse.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 390

$System_Drawing_Point.Y = 218

$fileBrowse.Location = $System_Drawing_Point

$fileBrowse.Name = "fileBrowse"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 75

$fileBrowse.Size = $System_Drawing_Size

$fileBrowse.TabIndex = 0

$fileBrowse.Text = "Browse"

$fileBrowse.UseVisualStyleBackColor = $True

$fileBrowse.add_Click($fileBrowseClicked) ##Event occurs, executes code from the previous section##



$generalPage.Controls.Add($fileBrowse)

##End code for GUI elements on general tab



##Start Code for the Process/DLL tab and all GUI elements on this tab

$processDllTab.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$processDllTab.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$processDllTab.Location = $System_Drawing_Point

$processDllTab.Name = "processDllTab"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$processDllTab.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$processDllTab.Size = $System_Drawing_Size

$processDllTab.TabIndex = 1

$processDllTab.Text = "Process/DLLs"



$alllTab.Controls.Add($processDllTab)

$dll_Execute_Group.Anchor = 15



$dll_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$dll_Execute_Group.Location = $System_Drawing_Point

$dll_Execute_Group.Name = "dll_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$dll_Execute_Group.Size = $System_Drawing_Size

$dll_Execute_Group.TabIndex = 2

$dll_Execute_Group.TabStop = $False

$dll_Execute_Group.Text = "Command Execution"



$processDllTab.Controls.Add($dll_Execute_Group)

$dll_Comm_Output.Anchor = 15

$dll_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$dll_Comm_Output.Location = $System_Drawing_Point

$dll_Comm_Output.Name = "dll_Comm_Output"

$dll_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$dll_Comm_Output.Size = $System_Drawing_Size

$dll_Comm_Output.TabIndex = 2

$dll_Comm_Output.Text = ""

$dll_Comm_Output.WordWrap = $False

$dll_Execute_Group.Controls.Add($dll_Comm_Output)





$dll_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$dll_Exec_Button.Location = $System_Drawing_Point

$dll_Exec_Button.Name = "dll_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$dll_Exec_Button.Size = $System_Drawing_Size

$dll_Exec_Button.TabIndex = 1

$dll_Exec_Button.Text = "Execute"

$dll_Exec_Button.UseVisualStyleBackColor = $True

$dll_Exec_Button.add_Click($dllExecute) ##Event occurs, executes code from the previous section##



$dll_Execute_Group.Controls.Add($dll_Exec_Button)



$dll_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$dll_Comm_StringBox.Location = $System_Drawing_Point

$dll_Comm_StringBox.Name = "dll_Comm_StringBox"

$dll_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$dll_Comm_StringBox.Size = $System_Drawing_Size

$dll_Comm_StringBox.TabIndex = 0



$dll_Execute_Group.Controls.Add($dll_Comm_StringBox)





$dll_Descript_Group.Anchor = 13



$dll_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$dll_Descript_Group.Location = $System_Drawing_Point

$dll_Descript_Group.Name = "dll_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$dll_Descript_Group.Size = $System_Drawing_Size

$dll_Descript_Group.TabIndex = 1

$dll_Descript_Group.TabStop = $False

$dll_Descript_Group.Text = "Command Description/Options"



$dll_option3Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 461

$System_Drawing_Point.Y = 142

$dll_option3Check.Location = $System_Drawing_Point

$dll_option3Check.Name = "dll_option3Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$dll_option3Check.Size = $System_Drawing_Size

$dll_option3Check.TabIndex = 10

$dll_option3Check.UseVisualStyleBackColor = $True

$dll_option3Check.Visible = $false

$dll_option3Check.add_CheckedChanged({dllCheckChanged})



$dll_Descript_Group.Controls.Add($dll_option3Check)





$dll_option2Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 284

$System_Drawing_Point.Y = 142

$dll_option2Check.Location = $System_Drawing_Point

$dll_option2Check.Name = "dll_option2Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$dll_option2Check.Size = $System_Drawing_Size

$dll_option2Check.TabIndex = 9

$dll_option2Check.UseVisualStyleBackColor = $True

$dll_option2Check.Visible = $false

$dll_option2Check.add_CheckedChanged({dllCheckChanged})



$dll_Descript_Group.Controls.Add($dll_option2Check)





$dll_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$dll_option1Check.Location = $System_Drawing_Point

$dll_option1Check.Name = "dll_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 29

$dll_option1Check.Size = $System_Drawing_Size

$dll_option1Check.TabIndex = 8

$dll_option1Check.UseVisualStyleBackColor = $True

$dll_option1Check.Visible = $false

$dll_option1Check.add_CheckedChanged({dllCheckChanged})



$dll_Descript_Group.Controls.Add($dll_option1Check)





$dll_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$dll_updateCommand.Location = $System_Drawing_Point

$dll_updateCommand.Name = "dll_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$dll_updateCommand.Size = $System_Drawing_Size

$dll_updateCommand.TabIndex = 7

$dll_updateCommand.Text = "Update Command"

$dll_updateCommand.UseVisualStyleBackColor = $True

$dll_updateCommand.add_Click($dllUpdateCommand)



$dll_Descript_Group.Controls.Add($dll_updateCommand)



$dll_optionTBox3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 169

$dll_optionTBox3.Location = $System_Drawing_Point

$dll_optionTBox3.Name = "dll_optionTBox3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$dll_optionTBox3.Size = $System_Drawing_Size

$dll_optionTBox3.TabIndex = 6

$dll_optionTBox3.Visible = $False

$dll_optionTBox3.Enabled = $False





$dll_Descript_Group.Controls.Add($dll_optionTBox3)



$dll_tBoxLabel3.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 142

$dll_tBoxLabel3.Location = $System_Drawing_Point

$dll_tBoxLabel3.Name = "dll_tBoxLabel3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$dll_tBoxLabel3.Size = $System_Drawing_Size

$dll_tBoxLabel3.TabIndex = 5

$dll_tBoxLabel3.Text = "N/A"

$dll_tBoxLabel3.Visible = $False



$dll_Descript_Group.Controls.Add($dll_tBoxLabel3)



$dll_optionTBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 169

$dll_optionTBox2.Location = $System_Drawing_Point

$dll_optionTBox2.Name = "dll_optionTBox2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$dll_optionTBox2.Size = $System_Drawing_Size

$dll_optionTBox2.TabIndex = 4

$dll_optionTBox2.Visible = $False

$dll_optionTBox2.Enabled = $False



$dll_Descript_Group.Controls.Add($dll_optionTBox2)



$dll_tBoxLabel2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 142

$dll_tBoxLabel2.Location = $System_Drawing_Point

$dll_tBoxLabel2.Name = "dll_tBoxLabel2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$dll_tBoxLabel2.Size = $System_Drawing_Size

$dll_tBoxLabel2.TabIndex = 3

$dll_tBoxLabel2.Text = "N/A"

$dll_tBoxLabel2.Visible = $False



$dll_Descript_Group.Controls.Add($dll_tBoxLabel2)



$dll_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$dll_tBoxLabel1.Location = $System_Drawing_Point

$dll_tBoxLabel1.Name = "dll_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$dll_tBoxLabel1.Size = $System_Drawing_Size

$dll_tBoxLabel1.TabIndex = 2

$dll_tBoxLabel1.Text = "N/A"

$dll_tBoxLabel1.Visible = $False



$dll_Descript_Group.Controls.Add($dll_tBoxLabel1)



$dll_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 168

$dll_optionTBox1.Location = $System_Drawing_Point

$dll_optionTBox1.Name = "dll_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$dll_optionTBox1.Size = $System_Drawing_Size

$dll_optionTBox1.TabIndex = 1

$dll_optionTBox1.Visible = $False

$dll_optionTBox1.Enabled = $False



$dll_Descript_Group.Controls.Add($dll_optionTBox1)





$processDllTab.Controls.Add($dll_Descript_Group)

$dll_Descript_Text.Anchor = 13

$dll_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$dll_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$dll_Descript_Text.Location = $System_Drawing_Point

$dll_Descript_Text.Name = "dll_Descript_Text"

$dll_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$dll_Descript_Text.Size = $System_Drawing_Size

$dll_Descript_Text.TabIndex = 0

$dll_Descript_Text.Text = ""



$dll_Descript_Group.Controls.Add($dll_Descript_Text)





$dll_comm_group.Anchor = 13



$dll_comm_group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$dll_comm_group.Location = $System_Drawing_Point

$dll_comm_group.Name = "dll_comm_group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$dll_comm_group.Size = $System_Drawing_Size

$dll_comm_group.TabIndex = 0

$dll_comm_group.TabStop = $False

$dll_comm_group.Text = "Available Commands:"



$processDllTab.Controls.Add($dll_comm_group)

$dll_com_drop.DataBindings.DefaultDataSourceUpdateMode = 0

$dll_com_drop.DropDownStyle = 2

$dll_com_drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$dll_com_drop.Location = $System_Drawing_Point

$dll_com_drop.Name = "dll_com_drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$dll_com_drop.Size = $System_Drawing_Size

$dll_com_drop.TabIndex = 0

$dll_com_drop.add_SelectionChangeCommitted($dllCommandChanged) ##Event occurs, executes code from the previous section##

$dll_comm_group.Controls.Add($dll_com_drop)

##End code for GUI objects on Proccess/DLL tab



##Start code for Process Mem tab

$processMemPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$processMemPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$processMemPage.Location = $System_Drawing_Point

$processMemPage.Name = "processMemPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$processMemPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$processMemPage.Size = $System_Drawing_Size

$processMemPage.TabIndex = 2

$processMemPage.Text = "Process Mem"



$alllTab.Controls.Add($processMemPage)

$procmem_Execute_Group.Anchor = 15



$procmem_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$procmem_Execute_Group.Location = $System_Drawing_Point

$procmem_Execute_Group.Name = "procmem_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$procmem_Execute_Group.Size = $System_Drawing_Size

$procmem_Execute_Group.TabIndex = 2

$procmem_Execute_Group.TabStop = $False

$procmem_Execute_Group.Text = "Command Execution"



$processMemPage.Controls.Add($procmem_Execute_Group)

$procmem_Comm_Output.Anchor = 15

$procmem_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$procmem_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$procmem_Comm_Output.Location = $System_Drawing_Point

$procmem_Comm_Output.Name = "procmem_Comm_Output"

$procmem_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$procmem_Comm_Output.Size = $System_Drawing_Size

$procmem_Comm_Output.TabIndex = 2

$procmem_Comm_Output.Text = ""

$procmem_Comm_Output.WordWrap = $False



$procmem_Execute_Group.Controls.Add($procmem_Comm_Output)





$procmem_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$procmem_Exec_Button.Location = $System_Drawing_Point

$procmem_Exec_Button.Name = "procmem_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$procmem_Exec_Button.Size = $System_Drawing_Size

$procmem_Exec_Button.TabIndex = 1

$procmem_Exec_Button.Text = "Execute"

$procmem_Exec_Button.UseVisualStyleBackColor = $True

$procmem_Exec_Button.add_Click($procMemExecute) ##Event occurs, executes code from the previous section##



$procmem_Execute_Group.Controls.Add($procmem_Exec_Button)



$procmem_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$procmem_Comm_StringBox.Location = $System_Drawing_Point

$procmem_Comm_StringBox.Name = "procmem_Comm_StringBox"

$procmem_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$procmem_Comm_StringBox.Size = $System_Drawing_Size

$procmem_Comm_StringBox.TabIndex = 0



$procmem_Execute_Group.Controls.Add($procmem_Comm_StringBox)





$procmem_Descript_Group.Anchor = 13



$procmem_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$procmem_Descript_Group.Location = $System_Drawing_Point

$procmem_Descript_Group.Name = "procmem_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$procmem_Descript_Group.Size = $System_Drawing_Size

$procmem_Descript_Group.TabIndex = 1

$procmem_Descript_Group.TabStop = $False

$procmem_Descript_Group.Text = "Command Description/Options"



$processMemPage.Controls.Add($procmem_Descript_Group)



$procmem_option2Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 284

$System_Drawing_Point.Y = 142

$procmem_option2Check.Location = $System_Drawing_Point

$procmem_option2Check.Name = "procmem_option2Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$procmem_option2Check.Size = $System_Drawing_Size

$procmem_option2Check.TabIndex = 7

$procmem_option2Check.UseVisualStyleBackColor = $True

$procmem_option2Check.Visible = $False

$procmem_option2Check.add_CheckedChanged({procmemCheckChanged})



$procmem_Descript_Group.Controls.Add($procmem_option2Check)





$procmem_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$procmem_option1Check.Location = $System_Drawing_Point

$procmem_option1Check.Name = "procmem_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 29

$procmem_option1Check.Size = $System_Drawing_Size

$procmem_option1Check.TabIndex = 6

$procmem_option1Check.UseVisualStyleBackColor = $True

$procmem_option1Check.Visible = $False

$procmem_option1Check.add_CheckedChanged({procmemCheckChanged})



$procmem_Descript_Group.Controls.Add($procmem_option1Check)





$procmem_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$procmem_updateCommand.Location = $System_Drawing_Point

$procmem_updateCommand.Name = "procmem_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$procmem_updateCommand.Size = $System_Drawing_Size

$procmem_updateCommand.TabIndex = 5

$procmem_updateCommand.Text = "Update Command"

$procmem_updateCommand.UseVisualStyleBackColor = $True

$procmem_updateCommand.add_Click($procmemUpdateCommand)



$procmem_Descript_Group.Controls.Add($procmem_updateCommand)



$procmem_optionTBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 169

$procmem_optionTBox2.Location = $System_Drawing_Point

$procmem_optionTBox2.Name = "procmem_optionTBox2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$procmem_optionTBox2.Size = $System_Drawing_Size

$procmem_optionTBox2.TabIndex = 4

$procmem_optionTBox2.Visible = $False

$procmem_optionTBox2.Enabled = $False



$procmem_Descript_Group.Controls.Add($procmem_optionTBox2)



$procmem_tBoxLabel2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 142

$procmem_tBoxLabel2.Location = $System_Drawing_Point

$procmem_tBoxLabel2.Name = "procmem_tBoxLabel2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$procmem_tBoxLabel2.Size = $System_Drawing_Size

$procmem_tBoxLabel2.TabIndex = 3

$procmem_tBoxLabel2.Text = ""

$procmem_tBoxLabel2.Visible = $False



$procmem_Descript_Group.Controls.Add($procmem_tBoxLabel2)



$procmem_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$procmem_optionTBox1.Location = $System_Drawing_Point

$procmem_optionTBox1.Name = "procmem_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$procmem_optionTBox1.Size = $System_Drawing_Size

$procmem_optionTBox1.TabIndex = 2

$procmem_optionTBox1.Visible = $False

$procmem_optionTBox1.Enabled = $False



$procmem_Descript_Group.Controls.Add($procmem_optionTBox1)



$procmem_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$procmem_tBoxLabel1.Location = $System_Drawing_Point

$procmem_tBoxLabel1.Name = "procmem_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$procmem_tBoxLabel1.Size = $System_Drawing_Size

$procmem_tBoxLabel1.TabIndex = 1

$procmem_tBoxLabel1.Text = ""

$procmem_tBoxLabel1.Visible = $False



$procmem_Descript_Group.Controls.Add($procmem_tBoxLabel1)



$procmem_Descript_Text.Anchor = 13

$procmem_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$procmem_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$procmem_Descript_Text.Location = $System_Drawing_Point

$procmem_Descript_Text.Name = "procmem_Descript_Text"

$procmem_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$procmem_Descript_Text.Size = $System_Drawing_Size

$procmem_Descript_Text.TabIndex = 0

$procmem_Descript_Text.Text = ""



$procmem_Descript_Group.Controls.Add($procmem_Descript_Text)





$procmem_comm_group.Anchor = 13



$procmem_comm_group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$procmem_comm_group.Location = $System_Drawing_Point

$procmem_comm_group.Name = "procmem_comm_group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$procmem_comm_group.Size = $System_Drawing_Size

$procmem_comm_group.TabIndex = 0

$procmem_comm_group.TabStop = $False

$procmem_comm_group.Text = "Available Commands:"



$processMemPage.Controls.Add($procmem_comm_group)

$promem_com_drop.DataBindings.DefaultDataSourceUpdateMode = 0

$promem_com_drop.DropDownStyle = 2

$promem_com_drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$promem_com_drop.Location = $System_Drawing_Point

$promem_com_drop.Name = "promem_com_drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$promem_com_drop.Size = $System_Drawing_Size

$promem_com_drop.TabIndex = 0

$promem_com_drop.add_SelectionChangeCommitted($procMemCommandChanged) ##Event occurs, executes code from the previous section##



$procmem_comm_group.Controls.Add($promem_com_drop)

##End code for GUI elemetns on Process Memory Tab



##Start Code for GUI objects on Kernel tab

$kernelPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$kernelPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$kernelPage.Location = $System_Drawing_Point

$kernelPage.Name = "kernelPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$kernelPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$kernelPage.Size = $System_Drawing_Size

$kernelPage.TabIndex = 3

$kernelPage.Text = "Kernel Mem/Obj"



$alllTab.Controls.Add($kernelPage)

$kernel_Execute_Group.Anchor = 15



$kernel_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$kernel_Execute_Group.Location = $System_Drawing_Point

$kernel_Execute_Group.Name = "kernel_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$kernel_Execute_Group.Size = $System_Drawing_Size

$kernel_Execute_Group.TabIndex = 2

$kernel_Execute_Group.TabStop = $False

$kernel_Execute_Group.Text = "Command Execution"



$kernelPage.Controls.Add($kernel_Execute_Group)

$kernel_Comm_Output.Anchor = 15

$kernel_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$kernel_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$kernel_Comm_Output.Location = $System_Drawing_Point

$kernel_Comm_Output.Name = "kernel_Comm_Output"

$kernel_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$kernel_Comm_Output.Size = $System_Drawing_Size

$kernel_Comm_Output.TabIndex = 2

$kernel_Comm_Output.Text = ""

$kernel_Comm_Output.WordWrap = $False



$kernel_Execute_Group.Controls.Add($kernel_Comm_Output)





$kernel_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$kernel_Exec_Button.Location = $System_Drawing_Point

$kernel_Exec_Button.Name = "kernel_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$kernel_Exec_Button.Size = $System_Drawing_Size

$kernel_Exec_Button.TabIndex = 1

$kernel_Exec_Button.Text = "Execute"

$kernel_Exec_Button.UseVisualStyleBackColor = $True

$kernel_Exec_Button.add_Click($kernelExecute) ##Event occurs, executes code from the previous section##



$kernel_Execute_Group.Controls.Add($kernel_Exec_Button)



$kernel_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$kernel_Comm_StringBox.Location = $System_Drawing_Point

$kernel_Comm_StringBox.Name = "kernel_Comm_StringBox"

$kernel_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$kernel_Comm_StringBox.Size = $System_Drawing_Size

$kernel_Comm_StringBox.TabIndex = 0



$kernel_Execute_Group.Controls.Add($kernel_Comm_StringBox)





$kernel_Descript_Group.Anchor = 13



$kernel_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$kernel_Descript_Group.Location = $System_Drawing_Point

$kernel_Descript_Group.Name = "kernel_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$kernel_Descript_Group.Size = $System_Drawing_Size

$kernel_Descript_Group.TabIndex = 1

$kernel_Descript_Group.TabStop = $False

$kernel_Descript_Group.Text = "Command Description/Options"



$kernelPage.Controls.Add($kernel_Descript_Group)



$kernel_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$kernel_updateCommand.Location = $System_Drawing_Point

$kernel_updateCommand.Name = "kernel_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$kernel_updateCommand.Size = $System_Drawing_Size

$kernel_updateCommand.TabIndex = 10

$kernel_updateCommand.Text = "Update Command"

$kernel_updateCommand.UseVisualStyleBackColor = $True

$kernel_updateCommand.add_Click($kernelUpdateCommand)



$kernel_Descript_Group.Controls.Add($kernel_updateCommand)





$kernel_option3Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 461

$System_Drawing_Point.Y = 142

$kernel_option3Check.Location = $System_Drawing_Point

$kernel_option3Check.Name = "kernel_option3Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$kernel_option3Check.Size = $System_Drawing_Size

$kernel_option3Check.TabIndex = 9

$kernel_option3Check.UseVisualStyleBackColor = $True

$kernel_option3Check.Visible = $false

$kernel_option3Check.add_CheckedChanged({kernelCheckChanged})



$kernel_Descript_Group.Controls.Add($kernel_option3Check)





$kernel_option2Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 284

$System_Drawing_Point.Y = 142

$kernel_option2Check.Location = $System_Drawing_Point

$kernel_option2Check.Name = "kernel_option2Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$kernel_option2Check.Size = $System_Drawing_Size

$kernel_option2Check.TabIndex = 8

$kernel_option2Check.UseVisualStyleBackColor = $True

$kernel_option2Check.Visible = $false

$kernel_option2Check.add_CheckedChanged({kernelCheckChanged})



$kernel_Descript_Group.Controls.Add($kernel_option2Check)





$kernel_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$kernel_option1Check.Location = $System_Drawing_Point

$kernel_option1Check.Name = "kernel_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$kernel_option1Check.Size = $System_Drawing_Size

$kernel_option1Check.TabIndex = 7

$kernel_option1Check.UseVisualStyleBackColor = $True

$kernel_option1Check.Visible = $false

$kernel_option1Check.add_CheckedChanged({kernelCheckChanged})



$kernel_Descript_Group.Controls.Add($kernel_option1Check)



$kernel_optionTBox3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 169

$kernel_optionTBox3.Location = $System_Drawing_Point

$kernel_optionTBox3.Name = "kernel_optionTBox3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$kernel_optionTBox3.Size = $System_Drawing_Size

$kernel_optionTBox3.TabIndex = 6

$kernel_optionTBox3.Visible = $false

$kernel_optionTBox3.Enabled = $false



$kernel_Descript_Group.Controls.Add($kernel_optionTBox3)



$kernel_optionTBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 169

$kernel_optionTBox2.Location = $System_Drawing_Point

$kernel_optionTBox2.Name = "kernel_optionTBox2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$kernel_optionTBox2.Size = $System_Drawing_Size

$kernel_optionTBox2.TabIndex = 5

$kernel_optionTBox2.Visible = $false

$kernel_optionTBox2.Enabled = $false



$kernel_Descript_Group.Controls.Add($kernel_optionTBox2)



$kernel_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$kernel_optionTBox1.Location = $System_Drawing_Point

$kernel_optionTBox1.Name = "kernel_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$kernel_optionTBox1.Size = $System_Drawing_Size

$kernel_optionTBox1.TabIndex = 4

$kernel_optionTBox1.Visible = $false

$kernel_optionTBox1.Enabled = $false



$kernel_Descript_Group.Controls.Add($kernel_optionTBox1)



$kernel_tBoxLabel3.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 142

$kernel_tBoxLabel3.Location = $System_Drawing_Point

$kernel_tBoxLabel3.Name = "kernel_tBoxLabel3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$kernel_tBoxLabel3.Size = $System_Drawing_Size

$kernel_tBoxLabel3.TabIndex = 3

$kernel_tBoxLabel3.Text = ""

$kernel_tBoxLabel3.Visible = $false



$kernel_Descript_Group.Controls.Add($kernel_tBoxLabel3)



$kernel_tBoxLabel2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 142

$kernel_tBoxLabel2.Location = $System_Drawing_Point

$kernel_tBoxLabel2.Name = "kernel_tBoxLabel2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$kernel_tBoxLabel2.Size = $System_Drawing_Size

$kernel_tBoxLabel2.TabIndex = 2

$kernel_tBoxLabel2.Text = ""

$kernel_tBoxLabel2.Visible = $false



$kernel_Descript_Group.Controls.Add($kernel_tBoxLabel2)



$kernel_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$kernel_tBoxLabel1.Location = $System_Drawing_Point

$kernel_tBoxLabel1.Name = "kernel_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$kernel_tBoxLabel1.Size = $System_Drawing_Size

$kernel_tBoxLabel1.TabIndex = 1

$kernel_tBoxLabel1.Text = ""

$kernel_tBoxLabel1.Visible = $false



$kernel_Descript_Group.Controls.Add($kernel_tBoxLabel1)



$kernel_Descript_Text.Anchor = 13

$kernel_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$kernel_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$kernel_Descript_Text.Location = $System_Drawing_Point

$kernel_Descript_Text.Name = "kernel_Descript_Text"

$kernel_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$kernel_Descript_Text.Size = $System_Drawing_Size

$kernel_Descript_Text.TabIndex = 0

$kernel_Descript_Text.Text = ""



$kernel_Descript_Group.Controls.Add($kernel_Descript_Text)



$kernel_Comm_Group.Anchor = 13



$kernel_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$kernel_Comm_Group.Location = $System_Drawing_Point

$kernel_Comm_Group.Name = "kernel_Comm_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$kernel_Comm_Group.Size = $System_Drawing_Size

$kernel_Comm_Group.TabIndex = 0

$kernel_Comm_Group.TabStop = $False

$kernel_Comm_Group.Text = "Available Commands:"



$kernelPage.Controls.Add($kernel_Comm_Group)

$kernel_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0

$kernel_Comm_Drop.DropDownStyle = 2

$kernel_Comm_Drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$kernel_Comm_Drop.Location = $System_Drawing_Point

$kernel_Comm_Drop.Name = "kernel_Comm_Drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$kernel_Comm_Drop.Size = $System_Drawing_Size

$kernel_Comm_Drop.TabIndex = 0

$kernel_Comm_Drop.add_SelectionChangeCommitted($kernelCommandChanged) ##Event occurs, executes code from the previous section##



$kernel_Comm_Group.Controls.Add($kernel_Comm_Drop)

##End code for all GUI objects on Kernel tab



##Start code for all GUI objects on GUI memory tab

$guiPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$guiPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$guiPage.Location = $System_Drawing_Point

$guiPage.Name = "guiPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$guiPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$guiPage.Size = $System_Drawing_Size

$guiPage.TabIndex = 4

$guiPage.Text = "GUI Mem"



$alllTab.Controls.Add($guiPage)

$gui_Execute_Group.Anchor = 15



$gui_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$gui_Execute_Group.Location = $System_Drawing_Point

$gui_Execute_Group.Name = "gui_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$gui_Execute_Group.Size = $System_Drawing_Size

$gui_Execute_Group.TabIndex = 2

$gui_Execute_Group.TabStop = $False

$gui_Execute_Group.Text = "Command Execution"



$guiPage.Controls.Add($gui_Execute_Group)

$gui_Comm_Output.Anchor = 15

$gui_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$gui_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$gui_Comm_Output.Location = $System_Drawing_Point

$gui_Comm_Output.Name = "gui_Comm_Output"

$gui_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$gui_Comm_Output.Size = $System_Drawing_Size

$gui_Comm_Output.TabIndex = 2

$gui_Comm_Output.Text = ""

$gui_Comm_Output.WordWrap = $False



$gui_Execute_Group.Controls.Add($gui_Comm_Output)





$gui_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$gui_Exec_Button.Location = $System_Drawing_Point

$gui_Exec_Button.Name = "gui_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$gui_Exec_Button.Size = $System_Drawing_Size

$gui_Exec_Button.TabIndex = 1

$gui_Exec_Button.Text = "Execute"

$gui_Exec_Button.UseVisualStyleBackColor = $True

$gui_Exec_Button.add_Click($guiExecute) ##Event occurs, executes code from the previous section##



$gui_Execute_Group.Controls.Add($gui_Exec_Button)



$gui_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$gui_Comm_StringBox.Location = $System_Drawing_Point

$gui_Comm_StringBox.Name = "gui_Comm_StringBox"

$gui_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$gui_Comm_StringBox.Size = $System_Drawing_Size

$gui_Comm_StringBox.TabIndex = 0



$gui_Execute_Group.Controls.Add($gui_Comm_StringBox)



$gui_Descript_Group.Anchor = 13



$gui_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$gui_Descript_Group.Location = $System_Drawing_Point

$gui_Descript_Group.Name = "gui_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$gui_Descript_Group.Size = $System_Drawing_Size

$gui_Descript_Group.TabIndex = 1

$gui_Descript_Group.TabStop = $False

$gui_Descript_Group.Text = "Command Description/Options"



$guiPage.Controls.Add($gui_Descript_Group)



$gui_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$gui_updateCommand.Location = $System_Drawing_Point

$gui_updateCommand.Name = "gui_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$gui_updateCommand.Size = $System_Drawing_Size

$gui_updateCommand.TabIndex = 4

$gui_updateCommand.Text = "Update Command"

$gui_updateCommand.UseVisualStyleBackColor = $True

$gui_updateCommand.add_Click($guiUpdateCommand)



$gui_Descript_Group.Controls.Add($gui_updateCommand)



$gui_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$gui_option1Check.Location = $System_Drawing_Point

$gui_option1Check.Name = "gui_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$gui_option1Check.Size = $System_Drawing_Size

$gui_option1Check.TabIndex = 3

$gui_option1Check.UseVisualStyleBackColor = $True

$gui_option1Check.add_CheckedChanged({guiCheckChanged})

$gui_option1Check.Visible = $false



$gui_Descript_Group.Controls.Add($gui_option1Check)



$gui_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$gui_optionTBox1.Location = $System_Drawing_Point

$gui_optionTBox1.Name = "gui_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$gui_optionTBox1.Size = $System_Drawing_Size

$gui_optionTBox1.TabIndex = 2

$gui_optionTBox1.Visible = $false

$gui_optionTBox1.Enabled = $false



$gui_Descript_Group.Controls.Add($gui_optionTBox1)



$gui_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$gui_tBoxLabel1.Location = $System_Drawing_Point

$gui_tBoxLabel1.Name = "gui_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$gui_tBoxLabel1.Size = $System_Drawing_Size

$gui_tBoxLabel1.TabIndex = 1

$gui_tBoxLabel1.Text = ""

$gui_tBoxLabel1.Visible = $false



$gui_Descript_Group.Controls.Add($gui_tBoxLabel1)



$gui_Descript_Text.Anchor = 13

$gui_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$gui_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$gui_Descript_Text.Location = $System_Drawing_Point

$gui_Descript_Text.Name = "gui_Descript_Text"

$gui_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$gui_Descript_Text.Size = $System_Drawing_Size

$gui_Descript_Text.TabIndex = 0

$gui_Descript_Text.Text = ""



$gui_Descript_Group.Controls.Add($gui_Descript_Text)





$gui_Comm_Group.Anchor = 13



$gui_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$gui_Comm_Group.Location = $System_Drawing_Point

$gui_Comm_Group.Name = "gui_Comm_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$gui_Comm_Group.Size = $System_Drawing_Size

$gui_Comm_Group.TabIndex = 0

$gui_Comm_Group.TabStop = $False

$gui_Comm_Group.Text = "Available Commands:"



$guiPage.Controls.Add($gui_Comm_Group)

$gui_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0

$gui_Comm_Drop.DropDownStyle = 2

$gui_Comm_Drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$gui_Comm_Drop.Location = $System_Drawing_Point

$gui_Comm_Drop.Name = "gui_Comm_Drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$gui_Comm_Drop.Size = $System_Drawing_Size

$gui_Comm_Drop.TabIndex = 0

$gui_Comm_Drop.add_SelectionChangeCommitted($guiCommandChanged) ##Event occurs, executes code from the previous section##



$gui_Comm_Group.Controls.Add($gui_Comm_Drop)

##End code for all GUI objects on GUI memory tab



##Start code for all GUI objects on Networking tab

$netPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$netPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$netPage.Location = $System_Drawing_Point

$netPage.Name = "netPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$netPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$netPage.Size = $System_Drawing_Size

$netPage.TabIndex = 5

$netPage.Text = "Networking"



$alllTab.Controls.Add($netPage)

$net_Execute_Group.Anchor = 15



$net_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$net_Execute_Group.Location = $System_Drawing_Point

$net_Execute_Group.Name = "net_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$net_Execute_Group.Size = $System_Drawing_Size

$net_Execute_Group.TabIndex = 2

$net_Execute_Group.TabStop = $False

$net_Execute_Group.Text = "Command Execution"



$netPage.Controls.Add($net_Execute_Group)

$net_Comm_Output.Anchor = 15

$net_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$net_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$net_Comm_Output.Location = $System_Drawing_Point

$net_Comm_Output.Name = "net_Comm_Output"

$net_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$net_Comm_Output.Size = $System_Drawing_Size

$net_Comm_Output.TabIndex = 2

$net_Comm_Output.Text = ""

$net_Comm_Output.WordWrap = $False



$net_Execute_Group.Controls.Add($net_Comm_Output)





$net_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$net_Exec_Button.Location = $System_Drawing_Point

$net_Exec_Button.Name = "net_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$net_Exec_Button.Size = $System_Drawing_Size

$net_Exec_Button.TabIndex = 1

$net_Exec_Button.Text = "Execute"

$net_Exec_Button.UseVisualStyleBackColor = $True

$net_Exec_Button.add_Click($netExecute) ##Event occurs, executes code from the previous section##



$net_Execute_Group.Controls.Add($net_Exec_Button)



$net_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$net_Comm_StringBox.Location = $System_Drawing_Point

$net_Comm_StringBox.Name = "net_Comm_StringBox"

$net_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$net_Comm_StringBox.Size = $System_Drawing_Size

$net_Comm_StringBox.TabIndex = 0



$net_Execute_Group.Controls.Add($net_Comm_StringBox)



$net_Descript_Group.Anchor = 13



$net_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$net_Descript_Group.Location = $System_Drawing_Point

$net_Descript_Group.Name = "net_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$net_Descript_Group.Size = $System_Drawing_Size

$net_Descript_Group.TabIndex = 1

$net_Descript_Group.TabStop = $False

$net_Descript_Group.Text = "Command Description/Options"



$netPage.Controls.Add($net_Descript_Group)



$net_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$net_option1Check.Location = $System_Drawing_Point

$net_option1Check.Name = "net_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$net_option1Check.Size = $System_Drawing_Size

$net_option1Check.TabIndex = 4

$net_option1Check.UseVisualStyleBackColor = $True

$net_option1Check.Visible = $false

$net_option1Check.add_CheckedChanged({netCheckChanged})



$net_Descript_Group.Controls.Add($net_option1Check)



$net_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$net_optionTBox1.Location = $System_Drawing_Point

$net_optionTBox1.Name = "net_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$net_optionTBox1.Size = $System_Drawing_Size

$net_optionTBox1.TabIndex = 3

$net_optionTBox1.Visible = $false

$net_optionTBox1.Enabled = $false



$net_Descript_Group.Controls.Add($net_optionTBox1)



$net_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$net_tBoxLabel1.Location = $System_Drawing_Point

$net_tBoxLabel1.Name = "net_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$net_tBoxLabel1.Size = $System_Drawing_Size

$net_tBoxLabel1.TabIndex = 2

$net_tBoxLabel1.Text = ""

$net_tBoxLabel1.Visible = $false



$net_Descript_Group.Controls.Add($net_tBoxLabel1)



$net_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$net_updateCommand.Location = $System_Drawing_Point

$net_updateCommand.Name = "net_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$net_updateCommand.Size = $System_Drawing_Size

$net_updateCommand.TabIndex = 1

$net_updateCommand.Text = "Update Command"

$net_updateCommand.UseVisualStyleBackColor = $True

$net_updateCommand.add_Click($netUpdateCommand)



$net_Descript_Group.Controls.Add($net_updateCommand)



$net_Descript_Text.Anchor = 13

$net_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$net_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$net_Descript_Text.Location = $System_Drawing_Point

$net_Descript_Text.Name = "net_Descript_Text"

$net_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$net_Descript_Text.Size = $System_Drawing_Size

$net_Descript_Text.TabIndex = 0

$net_Descript_Text.Text = ""



$net_Descript_Group.Controls.Add($net_Descript_Text)



$net_Comm_Group.Anchor = 13



$net_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$net_Comm_Group.Location = $System_Drawing_Point

$net_Comm_Group.Name = "net_Comm_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$net_Comm_Group.Size = $System_Drawing_Size

$net_Comm_Group.TabIndex = 0

$net_Comm_Group.TabStop = $False

$net_Comm_Group.Text = "Available Commands:"



$netPage.Controls.Add($net_Comm_Group)

$net_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0

$net_Comm_Drop.DropDownStyle = 2

$net_Comm_Drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$net_Comm_Drop.Location = $System_Drawing_Point

$net_Comm_Drop.Name = "net_Comm_Drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$net_Comm_Drop.Size = $System_Drawing_Size

$net_Comm_Drop.TabIndex = 0

$net_Comm_Drop.add_SelectionChangeCommitted($netCommandChanged) ##Event occurs, executes code from the previous section##



$net_Comm_Group.Controls.Add($net_Comm_Drop)

##End code for all GUI objects on Networking tab



##Start code for all GUI objects on Registry Tab

$registryPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$registryPage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$registryPage.Location = $System_Drawing_Point

$registryPage.Name = "registryPage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$registryPage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$registryPage.Size = $System_Drawing_Size

$registryPage.TabIndex = 6

$registryPage.Text = "Registry"



$alllTab.Controls.Add($registryPage)

$reg_Execute_Group.Anchor = 15



$reg_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$reg_Execute_Group.Location = $System_Drawing_Point

$reg_Execute_Group.Name = "reg_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$reg_Execute_Group.Size = $System_Drawing_Size

$reg_Execute_Group.TabIndex = 2

$reg_Execute_Group.TabStop = $False

$reg_Execute_Group.Text = "Command Execution"



$registryPage.Controls.Add($reg_Execute_Group)

$reg_Comm_Output.Anchor = 15

$reg_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$reg_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$reg_Comm_Output.Location = $System_Drawing_Point

$reg_Comm_Output.Name = "reg_Comm_Output"

$reg_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$reg_Comm_Output.Size = $System_Drawing_Size

$reg_Comm_Output.TabIndex = 2

$reg_Comm_Output.Text = ""

$reg_Comm_Output.WordWrap = $False



$reg_Execute_Group.Controls.Add($reg_Comm_Output)



$reg_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$reg_Exec_Button.Location = $System_Drawing_Point

$reg_Exec_Button.Name = "reg_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$reg_Exec_Button.Size = $System_Drawing_Size

$reg_Exec_Button.TabIndex = 1

$reg_Exec_Button.Text = "Execute"

$reg_Exec_Button.UseVisualStyleBackColor = $True

$reg_Exec_Button.add_Click($regExecute) ##Event occurs, executes code from the previous section##



$reg_Execute_Group.Controls.Add($reg_Exec_Button)



$reg_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$reg_Comm_StringBox.Location = $System_Drawing_Point

$reg_Comm_StringBox.Name = "reg_Comm_StringBox"

$reg_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$reg_Comm_StringBox.Size = $System_Drawing_Size

$reg_Comm_StringBox.TabIndex = 0



$reg_Execute_Group.Controls.Add($reg_Comm_StringBox)



$reg_Descript_Group.Anchor = 13



$reg_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$reg_Descript_Group.Location = $System_Drawing_Point

$reg_Descript_Group.Name = "reg_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$reg_Descript_Group.Size = $System_Drawing_Size

$reg_Descript_Group.TabIndex = 1

$reg_Descript_Group.TabStop = $False

$reg_Descript_Group.Text = "Command Description/Options"



$registryPage.Controls.Add($reg_Descript_Group)



$reg_option3Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 461

$System_Drawing_Point.Y = 142

$reg_option3Check.Location = $System_Drawing_Point

$reg_option3Check.Name = "reg_option3Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$reg_option3Check.Size = $System_Drawing_Size

$reg_option3Check.TabIndex = 10

$reg_option3Check.UseVisualStyleBackColor = $True

$reg_option3Check.Visible = $false

$reg_option3Check.add_CheckedChanged({regCheckChanged})



$reg_Descript_Group.Controls.Add($reg_option3Check)



$reg_option2Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 284

$System_Drawing_Point.Y = 142

$reg_option2Check.Location = $System_Drawing_Point

$reg_option2Check.Name = "reg_option2Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$reg_option2Check.Size = $System_Drawing_Size

$reg_option2Check.TabIndex = 9

$reg_option2Check.UseVisualStyleBackColor = $True

$reg_option2Check.Visible = $false

$reg_option2Check.add_CheckedChanged({regCheckChanged})



$reg_Descript_Group.Controls.Add($reg_option2Check)



$reg_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$reg_option1Check.Location = $System_Drawing_Point

$reg_option1Check.Name = "reg_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$reg_option1Check.Size = $System_Drawing_Size

$reg_option1Check.TabIndex = 8

$reg_option1Check.UseVisualStyleBackColor = $True

$reg_option1Check.Visible = $false

$reg_option1Check.add_CheckedChanged({regCheckChanged})



$reg_Descript_Group.Controls.Add($reg_option1Check)



$reg_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$reg_updateCommand.Location = $System_Drawing_Point

$reg_updateCommand.Name = "reg_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$reg_updateCommand.Size = $System_Drawing_Size

$reg_updateCommand.TabIndex = 7

$reg_updateCommand.Text = "Update Command"

$reg_updateCommand.UseVisualStyleBackColor = $True

$reg_updateCommand.add_Click($regUpdateCommand)



$reg_Descript_Group.Controls.Add($reg_updateCommand)



$reg_optionTBox3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 169

$reg_optionTBox3.Location = $System_Drawing_Point

$reg_optionTBox3.Name = "reg_optionTBox3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$reg_optionTBox3.Size = $System_Drawing_Size

$reg_optionTBox3.TabIndex = 6

$reg_optionTBox3.Visible = $false

$reg_optionTBox3.Enabled = $false



$reg_Descript_Group.Controls.Add($reg_optionTBox3)



$reg_optionTBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 169

$reg_optionTBox2.Location = $System_Drawing_Point

$reg_optionTBox2.Name = "reg_optionTBox2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$reg_optionTBox2.Size = $System_Drawing_Size

$reg_optionTBox2.TabIndex = 5

$reg_optionTBox2.Visible = $false

$reg_optionTBox2.Enabled = $false



$reg_Descript_Group.Controls.Add($reg_optionTBox2)



$reg_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$reg_optionTBox1.Location = $System_Drawing_Point

$reg_optionTBox1.Name = "reg_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$reg_optionTBox1.Size = $System_Drawing_Size

$reg_optionTBox1.TabIndex = 4

$reg_optionTBox1.Visible = $false

$reg_optionTBox1.Enabled = $false



$reg_Descript_Group.Controls.Add($reg_optionTBox1)



$reg_tBoxLabel3.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 360

$System_Drawing_Point.Y = 142

$reg_tBoxLabel3.Location = $System_Drawing_Point

$reg_tBoxLabel3.Name = "reg_tBoxLabel3"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$reg_tBoxLabel3.Size = $System_Drawing_Size

$reg_tBoxLabel3.TabIndex = 3

$reg_tBoxLabel3.Text = ""

$reg_tBoxLabel3.Visible = $false



$reg_Descript_Group.Controls.Add($reg_tBoxLabel3)



$reg_tBoxLabel2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 142

$reg_tBoxLabel2.Location = $System_Drawing_Point

$reg_tBoxLabel2.Name = "reg_tBoxLabel2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$reg_tBoxLabel2.Size = $System_Drawing_Size

$reg_tBoxLabel2.TabIndex = 2

$reg_tBoxLabel2.Text = ""

$reg_tBoxLabel2.Visible = $false



$reg_Descript_Group.Controls.Add($reg_tBoxLabel2)



$reg_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$reg_tBoxLabel1.Location = $System_Drawing_Point

$reg_tBoxLabel1.Name = "reg_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$reg_tBoxLabel1.Size = $System_Drawing_Size

$reg_tBoxLabel1.TabIndex = 1

$reg_tBoxLabel1.Text = ""

$reg_tBoxLabel1.Visible = $false



$reg_Descript_Group.Controls.Add($reg_tBoxLabel1)



$reg_Descript_Text.Anchor = 13

$reg_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$reg_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$reg_Descript_Text.Location = $System_Drawing_Point

$reg_Descript_Text.Name = "reg_Descript_Text"

$reg_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$reg_Descript_Text.Size = $System_Drawing_Size

$reg_Descript_Text.TabIndex = 0

$reg_Descript_Text.Text = ""



$reg_Descript_Group.Controls.Add($reg_Descript_Text)



$reg_Comm_Group.Anchor = 13



$reg_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$reg_Comm_Group.Location = $System_Drawing_Point

$reg_Comm_Group.Name = "reg_Comm_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$reg_Comm_Group.Size = $System_Drawing_Size

$reg_Comm_Group.TabIndex = 0

$reg_Comm_Group.TabStop = $False

$reg_Comm_Group.Text = "Available Commands:"



$registryPage.Controls.Add($reg_Comm_Group)

$reg_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0

$reg_Comm_Drop.DropDownStyle = 2

$reg_Comm_Drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$reg_Comm_Drop.Location = $System_Drawing_Point

$reg_Comm_Drop.Name = "reg_Comm_Drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$reg_Comm_Drop.Size = $System_Drawing_Size

$reg_Comm_Drop.TabIndex = 0

$reg_Comm_Drop.add_SelectionChangeCommitted($regCommandChanged) ##Event occurs, executes code from the previous section##



$reg_Comm_Group.Controls.Add($reg_Comm_Drop)

##End code for all GUI objects on Registry tab



##Start code for all GUI objects on malware tab

$malwarePage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$malwarePage.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 4

$System_Drawing_Point.Y = 22

$malwarePage.Location = $System_Drawing_Point

$malwarePage.Name = "malwarePage"

$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding

$System_Windows_Forms_Padding.All = 3

$System_Windows_Forms_Padding.Bottom = 3

$System_Windows_Forms_Padding.Left = 3

$System_Windows_Forms_Padding.Right = 3

$System_Windows_Forms_Padding.Top = 3

$malwarePage.Padding = $System_Windows_Forms_Padding

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 597

$System_Drawing_Size.Width = 531

$malwarePage.Size = $System_Drawing_Size

$malwarePage.TabIndex = 7

$malwarePage.Text = "Malware"



$alllTab.Controls.Add($malwarePage)

$mal_Execute_Group.Anchor = 15



$mal_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 340

$mal_Execute_Group.Location = $System_Drawing_Point

$mal_Execute_Group.Name = "mal_Execute_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 251

$System_Drawing_Size.Width = 518

$mal_Execute_Group.Size = $System_Drawing_Size

$mal_Execute_Group.TabIndex = 2

$mal_Execute_Group.TabStop = $False

$mal_Execute_Group.Text = "Command Execution"



$malwarePage.Controls.Add($mal_Execute_Group)

$mal_Comm_Output.Anchor = 15

$mal_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$mal_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 62

$mal_Comm_Output.Location = $System_Drawing_Point

$mal_Comm_Output.Name = "mal_Comm_Output"

$mal_Comm_Output.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 183

$System_Drawing_Size.Width = 505

$mal_Comm_Output.Size = $System_Drawing_Size

$mal_Comm_Output.TabIndex = 2

$mal_Comm_Output.Text = ""

$mal_Comm_Output.WordWrap = $False



$mal_Execute_Group.Controls.Add($mal_Comm_Output)



$mal_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 341

$System_Drawing_Point.Y = 35

$mal_Exec_Button.Location = $System_Drawing_Point

$mal_Exec_Button.Name = "mal_Exec_Button"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 87

$mal_Exec_Button.Size = $System_Drawing_Size

$mal_Exec_Button.TabIndex = 1

$mal_Exec_Button.Text = "Execute"

$mal_Exec_Button.UseVisualStyleBackColor = $True

$mal_Exec_Button.add_Click($malExecute) ##Event occurs, executes code from the previous section##



$mal_Execute_Group.Controls.Add($mal_Exec_Button)



$mal_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 35

$mal_Comm_StringBox.Location = $System_Drawing_Point

$mal_Comm_StringBox.Name = "mal_Comm_StringBox"

$mal_Comm_StringBox.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 310

$mal_Comm_StringBox.Size = $System_Drawing_Size

$mal_Comm_StringBox.TabIndex = 0



$mal_Execute_Group.Controls.Add($mal_Comm_StringBox)



$mal_Descript_Group.Anchor = 13



$mal_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 94

$mal_Descript_Group.Location = $System_Drawing_Point

$mal_Descript_Group.Name = "mal_Descript_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 240

$System_Drawing_Size.Width = 518

$mal_Descript_Group.Size = $System_Drawing_Size

$mal_Descript_Group.TabIndex = 1

$mal_Descript_Group.TabStop = $False

$mal_Descript_Group.Text = "Command Description/Options"



$malwarePage.Controls.Add($mal_Descript_Group)



$mal_option2Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 284

$System_Drawing_Point.Y = 142

$mal_option2Check.Location = $System_Drawing_Point

$mal_option2Check.Name = "mal_option2Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$mal_option2Check.Size = $System_Drawing_Size

$mal_option2Check.TabIndex = 7

$mal_option2Check.UseVisualStyleBackColor = $True

$mal_option2Check.Visible = $false

$mal_option2Check.add_CheckedChanged({malCheckChanged})



$mal_Descript_Group.Controls.Add($mal_option2Check)





$mal_option1Check.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 107

$System_Drawing_Point.Y = 142

$mal_option1Check.Location = $System_Drawing_Point

$mal_option1Check.Name = "mal_option1Check"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 24

$System_Drawing_Size.Width = 19

$mal_option1Check.Size = $System_Drawing_Size

$mal_option1Check.TabIndex = 6

$mal_option1Check.UseVisualStyleBackColor = $True

$mal_option1Check.Visible = $false

$mal_option1Check.add_CheckedChanged({malCheckChanged})



$mal_Descript_Group.Controls.Add($mal_option1Check)



$mal_optionTBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 169

$mal_optionTBox2.Location = $System_Drawing_Point

$mal_optionTBox2.Name = "mal_optionTBox2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$mal_optionTBox2.Size = $System_Drawing_Size

$mal_optionTBox2.TabIndex = 5

$mal_optionTBox2.Visible = $false

$mal_optionTBox2.Enabled = $false



$mal_Descript_Group.Controls.Add($mal_optionTBox2)



$mal_tBoxLabel2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 183

$System_Drawing_Point.Y = 142

$mal_tBoxLabel2.Location = $System_Drawing_Point

$mal_tBoxLabel2.Name = "mal_tBoxLabel2"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$mal_tBoxLabel2.Size = $System_Drawing_Size

$mal_tBoxLabel2.TabIndex = 4

$mal_tBoxLabel2.Text = ""

$mal_tBoxLabel2.Visible = $false



$mal_Descript_Group.Controls.Add($mal_tBoxLabel2)



$mal_optionTBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 169

$mal_optionTBox1.Location = $System_Drawing_Point

$mal_optionTBox1.Name = "mal_optionTBox1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 20

$System_Drawing_Size.Width = 120

$mal_optionTBox1.Size = $System_Drawing_Size

$mal_optionTBox1.TabIndex = 3

$mal_optionTBox1.Visible = $false

$mal_optionTBox1.Enabled = $false



$mal_Descript_Group.Controls.Add($mal_optionTBox1)



$mal_tBoxLabel1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 142

$mal_tBoxLabel1.Location = $System_Drawing_Point

$mal_tBoxLabel1.Name = "mal_tBoxLabel1"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 100

$mal_tBoxLabel1.Size = $System_Drawing_Size

$mal_tBoxLabel1.TabIndex = 2

$mal_tBoxLabel1.Text = ""

$mal_tBoxLabel1.Visible = $false



$mal_Descript_Group.Controls.Add($mal_tBoxLabel1)



$mal_updateCommand.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 211

$mal_updateCommand.Location = $System_Drawing_Point

$mal_updateCommand.Name = "mal_updateCommand"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 23

$System_Drawing_Size.Width = 120

$mal_updateCommand.Size = $System_Drawing_Size

$mal_updateCommand.TabIndex = 1

$mal_updateCommand.Text = "Update Command"

$mal_updateCommand.UseVisualStyleBackColor = $True

$mal_updateCommand.add_Click($malUpdateCommand)



$mal_Descript_Group.Controls.Add($mal_updateCommand)



$mal_Descript_Text.Anchor = 13

$mal_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$mal_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$mal_Descript_Text.Location = $System_Drawing_Point

$mal_Descript_Text.Name = "mal_Descript_Text"

$mal_Descript_Text.ReadOnly = $True

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 110

$System_Drawing_Size.Width = 505

$mal_Descript_Text.Size = $System_Drawing_Size

$mal_Descript_Text.TabIndex = 0

$mal_Descript_Text.Text = ""



$mal_Descript_Group.Controls.Add($mal_Descript_Text)



$mal_Comm_Group.Anchor = 13



$mal_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 7

$System_Drawing_Point.Y = 7

$mal_Comm_Group.Location = $System_Drawing_Point

$mal_Comm_Group.Name = "mal_Comm_Group"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 59

$System_Drawing_Size.Width = 518

$mal_Comm_Group.Size = $System_Drawing_Size

$mal_Comm_Group.TabIndex = 0

$mal_Comm_Group.TabStop = $False

$mal_Comm_Group.Text = "Available Commands:"



$malwarePage.Controls.Add($mal_Comm_Group)

$mal_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0

$mal_Comm_Drop.DropDownStyle = 2

$mal_Comm_Drop.FormattingEnabled = $True

$System_Drawing_Point = New-Object System.Drawing.Point

$System_Drawing_Point.X = 6

$System_Drawing_Point.Y = 19

$mal_Comm_Drop.Location = $System_Drawing_Point

$mal_Comm_Drop.Name = "mal_Comm_Drop"

$System_Drawing_Size = New-Object System.Drawing.Size

$System_Drawing_Size.Height = 21

$System_Drawing_Size.Width = 183

$mal_Comm_Drop.Size = $System_Drawing_Size

$mal_Comm_Drop.TabIndex = 0

$mal_Comm_Drop.add_SelectionChangeCommitted($malCommandChanged) ##Event occurs, executes code from the previous section##



$mal_Comm_Group.Controls.Add($mal_Comm_Drop)

##End code for all GUI objects on malware page



###

#Code for open file dialog

###

$openFileDialog1.FileName = ""

$openFileDialog1.Filter = "All files (*.*)| *.*"

$openFileDialog1.InitialDirectory = "C:\"

$openFileDialog1.ShowHelp = $False

$openFileDialog1.Title = "Open file"

$openFileDialog1.add_FileOk($handler_openFileDialog1_FileOk)





##Code to collect all commands and data from config file. Commands are added to drop down lists on each page based on this code.##

$config = gc volagui.config

ForEach($line in $config)

{

    if($line.contains("VolatilityPath=")) { $standardCommand = $line | Select-String "VolatilityPath=" | %{$_.Line.Split("=")[1]}; $customCommTBox.Text = "$standardCommand "} ##Determines Volatility Location and sets this value into custom command box

    elseif($line -eq "CMDDLL") { $dropDown = $dll_com_drop }

    elseif($line -eq "CMDPROCMEM") { $dropDown = $promem_com_drop }

    elseif($line -eq "CMDKERNEL") { $dropDown = $kernel_Comm_Drop }

    elseif($line -eq "CMDGUI") { $dropDown = $gui_Comm_Drop }

    elseif($line -eq "CMDNET") { $dropDown = $net_Comm_Drop }

    elseif($line -eq "CMDREG") { $dropDown = $reg_Comm_Drop }

    elseif($line -eq "CMDMAL") { $dropDown = $mal_Comm_Drop }

    else {

        $lineParts = $line.Split(":")

        $dropDown.Items.Add($lineParts[0]) | Out-Null

    }



}





#Code required for intial gui load

$InitialFormWindowState = $volaGuiForm.WindowState

$volaGuiForm.add_Load($OnLoadForm_StateCorrection)



#Show the GUI

$volaGuiForm.ShowDialog()| Out-Null



} ##End overall GenerateForm function



###Reset Checkbox functions######

###Calls to these functions occur when checkbox are changed###

Function dllCheckChanged

{

    if( $dll_option1Check.Checked ) { $dll_optionTBox1.Enabled = $true }

    else { $dll_optionTBox1.Enabled = $false }

    if( $dll_option2Check.Checked ) { $dll_optionTBox2.Enabled = $true }

    else { $dll_optionTBox2.Enabled = $false }

    if( $dll_option3Check.Checked ) { $dll_optionTBox3.Enabled = $true }

    else { $dll_optionTBox3.Enabled = $false }

}



Function procmemCheckChanged

{

    if( $procmem_option1Check.Checked ) { $procmem_optionTBox1.Enabled = $true }

    else { $procmem_optionTBox1.Enabled = $false }

    if( $procmem_option2Check.Checked ) { $procmem_optionTBox2.Enabled = $true }

    else { $procmem_optionTBox2.Enabled = $false }

}



Function kernelCheckChanged

{

    if( $kernel_option1Check.Checked ) { $kernel_optionTBox1.Enabled = $true }

    else { $kernel_optionTBox1.Enabled = $false }

    if( $kernel_option2Check.Checked ) { $kernel_optionTBox2.Enabled = $true }

    else { $kernel_optionTBox2.Enabled = $false }

    if( $kernel_option3Check.Checked ) { $kernel_optionTBox3.Enabled = $true }

    else { $kernel_optionTBox3.Enabled = $false }

}



Function guiCheckChanged

{

    if( $gui_option1Check.Checked ) { $gui_optionTBox1.Enabled = $true }

    else { $gui_optionTBox1.Enabled = $false }    

}



Function netCheckChanged

{

    if( $net_option1Check.Checked ) { $net_optionTBox1.Enabled = $true }

    else { $net_optionTBox1.Enabled = $false } 

}



Function regCheckChanged

{

    if( $reg_option1Check.Checked ) { $reg_optionTBox1.Enabled = $true }

    else { $reg_optionTBox1.Enabled = $false }

    if( $reg_option2Check.Checked ) { $reg_optionTBox2.Enabled = $true }

    else { $reg_optionTBox2.Enabled = $false }

    if( $reg_option3Check.Checked ) { $reg_optionTBox3.Enabled = $true }

    else { $reg_optionTBox3.Enabled = $false }

}



Function malCheckChanged

{

    if( $mal_option1Check.Checked ) { $mal_optionTBox1.Enabled = $true }

    else { $mal_optionTBox1.Enabled = $false }

    if( $mal_option2Check.Checked ) { $mal_optionTBox2.Enabled = $true }

    else { $mal_optionTBox2.Enabled = $false }

}

##############



###activity log created in appdata###

$date = Get-Date

if(-not (Test-Path -path "$env:APPDATA\VolaGUI") ) 

    { 

       New-Item -Path "$env:APPDATA\VolaGUI" -ItemType Directory -Force | Out-Null 

       "VolaGUI started: $date" >> "$env:APPDATA\VolaGUI\activity.log"

    }

else { "VolaGUI started: $date" >> "$env:APPDATA\VolaGUI\activity.log" }



#Calls the Function

GenerateForm



$date = Get-Date

"VolaGUI Closed: $date" >> "$env:APPDATA\VolaGUI\activity.log"
