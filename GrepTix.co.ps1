#BANNER
function ShowWelcomeMessage{
Clear-Host
Write-Host ""
  
Write-Host "                                                                                                              █▀▀ █▀█ █▀▀ █▀█ ▀█▀ █ ▀▄▀   █▀▀ █▀█            "
Write-Host "                                                                                                              █▄█ █▀▄ ██▄ █▀▀ ░█░ █ █░█ ▄ █▄▄ █▄█            "
Write-Host ""
Write-Host ""
Write-Host "                                                                                                  ░█████╗░░█████╗░██╗░░░░░██████╗░██████╗░██╗░░░░░░█████╗░██╗░░░██╗"
Write-Host "                                                                                                  ██╔══██╗██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝"
Write-Host "                                                                                                  ██║░░╚═╝██║░░██║██║░░░░░██║░░██║██████╔╝██║░░░░░███████║░╚████╔╝░"
Write-Host "                                                                                                  ██║░░██╗██║░░██║██║░░░░░██║░░██║██╔═══╝░██║░░░░░██╔══██║░░╚██╔╝░░"
Write-Host "                                                                                                  ╚█████╔╝╚█████╔╝███████╗██████╔╝██║░░░░░███████╗██║░░██║░░░██║░░░"
Write-Host "                                                                                                  ░╚════╝░░╚════╝░╚══════╝╚═════╝░╚═╝░░░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░"
Write-Host ""      
Write-Host "                                                                                                                        𝑴𝑼𝑺𝑰𝑪 𝒐𝒇 𝒕𝒉𝒆 𝑺𝑷𝑯𝑬𝑹𝑬𝑺                       " 
Write-Host ""    
Write-Host "                                                                                                            █░█░█ █▀█ █▀█ █░░ █▀▄   ▀█▀ █▀█ █░█ █▀█          "
Write-Host "                                                                                                            ▀▄▀▄▀ █▄█ █▀▄ █▄▄ █▄▀   ░█░ █▄█ █▄█ █▀▄          "
Write-Host ""  
Write-Host "                                                                                                        ＧＥＬＯＲＡ ＢＵＮＧ ＫＡＲＮＯ ＳＴＡＤＩＵＭ ＪＡＫＡＲＴＡ       "
Write-Host "                                                                                                                     𝑾𝒆𝒅𝒏𝒆𝒔𝒅𝒂𝒚 𝑵𝒐𝒗𝒆𝒎𝒃𝒆𝒓 15, 2023                  " 
Write-Host ""
Write-Host "                                                                           ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬"
Write-Host ""
}

#message box
Add-Type -TypeDefinition @"
    using System;
    using System.Windows.Forms;

    public class MessageBoxExample
    {
        public static void ShowMessageBox(string message, string title)
        {
            MessageBox.Show(message, title);
        }
    }
"@ -ReferencedAssemblies "System.Windows.Forms"

# Membuat SQL Connection
$sqlConnection = New-Object System.Data.SqlClient.SqlConnection
$sqlConnection.ConnectionString = "Server=localhost;Database=Konser;Integrated Security=true;"
$sqlConnection.Open()

# Main program
do {
    ShowWelcomeMessage

    Write-Host "                                                                                                                     Welcome to GrepTix.co!😉 "
    Write-Host ""                                                                                                
    Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
    Write-Host "                                                                                                  ░                                                               ░"
    Write-Host "                                                                                                  ░                  𝙿𝚕𝚎𝚊𝚜𝚎 𝚜𝚎𝚕𝚎𝚌𝚝 𝚊𝚗 𝚘𝚙𝚝𝚒𝚘𝚗:                     ░"
    Write-Host "                                                                                                  ░                    𝟷. 𝙿𝚞𝚛𝚌𝚑𝚊𝚜𝚎 𝚝𝚒𝚌𝚔𝚎𝚝                         ░"
    Write-Host "                                                                                                  ░                    𝟸. 𝙼𝚊𝚗𝚊𝚐𝚎 𝚝𝚒𝚌𝚔𝚎𝚝                           ░"
    Write-Host "                                                                                                  ░                    3. Exit                                    ░"
    Write-Host "                                                                                                  ░                                                               ░"
    Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
    Write-Host ""
    $choice = Read-Host "                                                                                         Your choice "
    switch ($choice) {
        1 {
            do {
                ShowWelcomeMessage
                Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
                Write-Host "                                                                                                  ░                                                              ░"
                Write-Host "                                                                                                  ░                       PURCHASE TICKET                        ░"
                Write-Host "                                                                                                  ░                                                              ░"
                Write-Host "                                                                                                  ░                  𝙿𝚕𝚎𝚊𝚜𝚎 𝚜𝚎𝚕𝚎𝚌𝚝 𝚊𝚗 𝚘𝚙𝚝𝚒𝚘𝚗:                    ░"
                Write-Host "                                                                                                  ░                   𝟷. 𝚅𝚒𝚎𝚠 𝙰𝚟𝚊𝚒𝚕𝚊𝚋𝚕𝚎 𝚃𝚒𝚌𝚔𝚎𝚝                   ░"
                Write-Host "                                                                                                  ░                   𝟸. 𝙿𝚞𝚛𝚌𝚑𝚊𝚜𝚎 𝚃𝚒𝚌𝚔𝚎𝚝                         ░"
                Write-Host "                                                                                                  ░                   𝟹. 𝚅𝚒𝚎𝚠 𝚙𝚞𝚛𝚌𝚑𝚊𝚜𝚎𝚍 𝚝𝚒𝚌𝚔𝚎𝚝𝚜                  ░"
                Write-Host "                                                                                                  ░                   𝟶. 𝙴𝚡𝚒𝚝                                    ░"
                Write-Host "                                                                                                  ░                                                              ░"
                Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
                Write-Host ""

                $choice = Read-Host "                                                                                         Your choice "

                switch ($choice) {
                    1 {
                            # Display ticket data

                            # Display a header for the display ticket data section.
                            Write-Host ""
                            Write-Host "                                                                                         🅳🅸🆂🅿🅻🅰🆈 🆃🅸🅲🅺🅴🆃 🅳🅰🆃🅰"
                            Write-Host ""

                            # Set the SQL command text to select all data from the Ticket table
                            $sqlCommand.CommandText = "SELECT * FROM Ticket"

                            # Execute the SQL command and store the result in a data reader object
                            $dataReader = $sqlCommand.ExecuteReader()

                            # Create a new DataTable object to store the results
                            $table = New-Object "System.Data.DataTable"

                            # Load the data from the data reader into the DataTable
                            $table.Load($dataReader)

                            # Format the DataTable as a table and store it as a string
                            $tableOutput = $table | Format-Table -AutoSize | Out-String

                            # Define the number of spaces to shift the table to the right
                            $shiftAmount = 85

                            # Split the table output into lines
                            $lines = $tableOutput -split "`r`n"

                            # Shift each line to the right by adding spaces
                            $shiftedLines = foreach ($line in $lines) {
                                $line.PadLeft($shiftAmount + $line.Length)
                            }

                            # Join the shifted lines back into a single string
                            $shiftedOutput = $shiftedLines -join "`r`n"

                            # Display the shifted table
                            Write-Host $shiftedOutput

                            # Close the data reader
                            $dataReader.Close()

                            # Prompt the user to press Enter to continue
                            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                            $null = Read-Host
                
                    }
                    2 { 
                       
                            # Display a header for the ticket purchase section.
                            Write-Host ""
                            Write-Host "                                                                                                  🅿🆄🆁🅲🅷🅰🆂🅴 🆃🅸🅲🅺🅴🆃🆂 🎟️"
                            Write-Host ""

                            # Confirm ticket purchase
                            $confirmPurchase = Read-Host "                                                                                                  Do you want to purchase a ticket? (Y/N)"
                            if ($confirmPurchase -eq "Y") {
                                # Input ticket purchase data
                                $buyerName = Read-Host "                                                                                                  Input buyer name"

                                # Prompt the user to input the ticket ID of the ticket to be purchased, only accept numbers.
                                while ($true) {
                                    try {
                                        $ticketID = [int] (Read-Host "                                                                                                  Input the TicketID to be purchased")
                                        $sqlCommand.CommandText = "SELECT COUNT(*) FROM Ticket WHERE TicketID = $ticketID"
                                        $count = $sqlCommand.ExecuteScalar()
                                        if ($count -eq 0) {
                                            Write-Host "                                                                                                  Ticket ID not found in the database." -ForegroundColor Red
                                            continue
                                        } else {
                                            break
                                        }
                                    } catch {
                                        # If the input is not a valid number, display an error message.
                                        Write-Host "                                                                                                  Ticket ID can only be input by number, please try again." -ForegroundColor Red
                                    }
                                }

                                # Prompt the user to input the quantity of the ticket to be purchased, only accept numbers.
                                while ($true) {
                                    try {
                                        $quantity = [int] (Read-Host "                                                                                                  Quantity")
                                        break
                                    } catch {
                                        Write-Host "                                                                                         Invalid input. Quantity can only be a number." -ForegroundColor Red
                                    }
                                }

                                # Get the ticket price, tax, and current quantity available from the Ticket table.
                                $sqlCommand.CommandText = "SELECT Price, Tax, QuantityAvailable FROM Ticket WHERE TicketID = $ticketID"
                                $dataReader = $sqlCommand.ExecuteReader()

                                if ($dataReader.HasRows) {
                                    $dataReader.Read()
                                    $ticketPrice = $dataReader["Price"]
                                    $ticketTax = $dataReader["Tax"]
                                    $currentQuantityAvailable = $dataReader["QuantityAvailable"]
                                    $dataReader.Close()

                                    $quantityValid = $false

                                    while (-not $quantityValid) {
                                        if ($quantity -le 0 -or $quantity -gt $currentQuantityAvailable) {
                                                Write-Host "                                                                                         Invalid quantity. Quantity must be a positive number and cannot exceed the available quantity." -ForegroundColor Red
                                                # Prompt the user to input the quantity again.
                                                while ($true) {
                                                    try {
                                                        $quantity = [int](Read-Host "Quantity")
                                                        if ($quantity -le 0) {
                                                            Write-Host "                                                                                         Invalid input. Quantity must be a positive number." -ForegroundColor Red
                                                            continue
                                                        }
                                                        if ($quantity -gt $currentQuantityAvailable) {
                                                            Write-Host "                                                                                         Insufficient quantity available for purchase." -ForegroundColor Red
                                                        }
                                                        break
                                                    } catch {
                                                        Write-Host "                                                                                                  Invalid input. Quantity can only be a number." -ForegroundColor Red
                                                    }
                                                }
                                        } else {
                                            $quantityValid = $true

                                            # Calculate the total purchase price.
                                            $subtotal = $ticketPrice * $quantity
                                            $tax = $subtotal * ($ticketTax/100)
                                            $total = $subtotal + $tax

                                            # Subtract the purchased quantity from the available quantity.
                                            $newQuantityAvailable = $currentQuantityAvailable - $quantity

                                            # Update the QuantityAvailable column in the Ticket table.
                                            $sqlCommand.CommandText = "UPDATE Ticket SET QuantityAvailable = $newQuantityAvailable WHERE TicketID = $ticketID"
                                            $rowsAffected = $sqlCommand.ExecuteNonQuery()

                                            if ($rowsAffected -eq 1) {
                                                # Add the purchase data to the Purchase table.
                                                $sqlCommand.CommandText = "INSERT INTO Purchase (TicketID, BuyerName, Quantity, TotalPrice) VALUES ($ticketID, '$buyerName', $quantity, $total)"
                                                $null = $sqlCommand.ExecuteNonQuery()

                                                Write-Host "                                                                                                  Total price (including tax): Rp $($total.ToString("N2"))" -ForegroundColor Green

                                                # Prompt the user to input the payment amount, only accept numbers.
                                                while ($true) {
                                                    try {
                                                        $payment = [double](Read-Host "                                                                                                  Input payment amount")
                                                        if ($payment -lt $total) {
                                                            Write-Host "                                                                                                  Payment amount is not enough. Total price is Rp $($total.ToString("N2"))" -ForegroundColor Red
                                                            continue
                                                        } else {
                                                            # Calculate the change.
                                                            $change = $payment - $total
                                                            Write-Host "                                                                                                  Change amount: Rp $($change.ToString("N2"))" -ForegroundColor Green

                                                            [MessageBoxExample]::ShowMessageBox("Tickets successfully booked", "GrepTix.co")
                                                    
                                                            # Prompt the user to press Enter to continue
                                                            Write-Host -NoNewLine "                                                                                                  Press Enter to continue..."
                                                            $null = Read-Host
                                                            break
                                                        }
                                                    } catch {
                                                        Write-Host "                                                                                                  Invalid input. Payment amount can only be a number." -ForegroundColor Red
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                             } 
                        else {
                            Write-Host "                                                                                                  Ticket purchase canceled." -ForegroundColor Yellow
                        }


                    }
                    3 {
                        Write-Host -NoNewLine "                                                                                         View purchased tickets : "

                        # Menampilkan data pembelian tiket
                        $sqlCommand.CommandText = "SELECT p.PurchaseID, t.TicketType, p.BuyerName, p.Quantity, p.TotalPrice, p.PurchaseDate FROM Purchase p JOIN Ticket t ON p.TicketID = t.TicketID"
                        $sqlDataAdapter = New-Object System.Data.SqlClient.SqlDataAdapter($sqlCommand)
                        $dataTable = New-Object System.Data.DataTable
                        $sqlDataAdapter.Fill($dataTable)

                        # Format the DataTable as a table and store it as a string
                        $tableOutput = $dataTable | Format-Table -AutoSize | Out-String

                        # Define the number of spaces to shift the table to the right
                        $shiftAmount = 75

                        # Split the table output into lines
                        $lines = $tableOutput -split "`r`n"

                        # Shift each line to the right by adding spaces
                        $shiftedLines = foreach ($line in $lines) {
                            $line.PadLeft($shiftAmount + $line.Length)
                        }

                        # Join the shifted lines back into a single string
                        $shiftedOutput = $shiftedLines -join "`r`n"

                        # Display the shifted table
                        Write-Host $shiftedOutput

                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host

                    }
                    0 {
                        Write-Output "                                                                                         Exiting Coldplay ticket purchasing application..."

                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host
                    }
                    default {
                        Write-Host "                                                                                         Invalid menu. Please enter a valid menu." -ForegroundColor Red

                        # Prompt the user to press Enter to continue
                        Write-Host -NoNewLine "                                                                                                            Press Enter to continue..."
                        $null = Read-Host
                    }
                }
            } while ($choice -ne "0")
            break
        }
        2 {
            
            do {
                Clear-Host
                ShowWelcomeMessage
                Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
                Write-Host "                                                                                                  ░                                                               ░"
                Write-Host "                                                                                                  ░                          MANAGE TICKET                        ░"
                Write-Host "                                                                                                  ░                                                               ░"
                Write-Host "                                                                                                  ░                   Please select an option:                    ░"
                Write-Host "                                                                                                  ░                     1. Add ticket data                        ░"
                Write-Host "                                                                                                  ░                     2. Edit ticket data                       ░"
                Write-Host "                                                                                                  ░                     3. Display ticket data                    ░"
                Write-Host "                                                                                                  ░                     4. Delete ticket data                     ░"
                Write-Host "                                                                                                  ░                     0. Exit                                   ░"
                Write-Host "                                                                                                  ░                                                               ░"
                Write-Host "                                                                                                  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
                Write-Host ""

                $menu = Read-Host "                                                                                         Your choice "

                switch ($menu) {
                    1 {
                        ## Add ticket data ##

                        # Display a header for the add ticket data section.
                        Write-Host ""
                        Write-Host "                                                                                         🅰🅳🅳 🆃🅸🅲🅺🅴🆃 🅳🅰🆃🅰"
                        Write-Host ""

                        # Prompt the user to input the ticket type.
                        $ticketType = Read-Host "                                                                                         Input Ticket Type "

                        # Initialize variables for price and tax.
                        $price = 0
                        $tax = 0

                        # Prompt the user to input the ticket price.re
                        while ($true) {
                            try {
                                $price = [double] (Read-Host "                                                                                         Input Ticket Price")
                                break
                            }
                            catch {
                                # If the input is not a valid number, display an error message.
                                Write-Host "                                                                                         Ticket Price can only be input by number, please try again." -ForegroundColor Red
                                Write-Output ""
                            }
                        }

                        # Prompt the user to input the ticket tax.
                        while ($true) {
                            try {
                                $tax = [double] (Read-Host "                                                                                         Input Ticket Tax  ")
                                break
                            }
                            catch {
                                # If the input is not a valid number, display an error message.
                                Write-Host "                                                                                         Ticket Tax can only be input by number, please try again." -ForegroundColor Red
                                Write-Output ""
                            }
                        }
                        # Prompt the user to input the quantity available.
                        while ($true) {
                            try {
                                $quantityAvailable = [int] (Read-Host "                                                                                         Input Quantity Available")
                                break
                            }
                            catch {
                                # If the input is not a valid integer, display an error message.
                                Write-Host "                                                                                         Quantity Available must be an integer, please try again." -ForegroundColor Red
                                Write-Output ""
                            }
                        }

                        # Build an SQL command to insert the ticket data into the database.
                         $sqlCommand.CommandText = "INSERT INTO Ticket (TicketType, Price, Tax, QuantityAvailable) VALUES ('$ticketType', $price, $tax, $quantityAvailable)"

                        # Execute the SQL command and store the number of rows affected.
                        $rowsAffected = $sqlCommand.ExecuteNonQuery()

                        # Check the value of $rowsAffected to determine whether the SQL command was successful.
                        if ($rowsAffected -eq 1) {
                            # If the SQL command was successful, output a success message.
                            Write-Host "                                                                                         Data added successfully." -ForegroundColor Green
                        } else {
                            # If the SQL command was not successful, output an error message.
                            Write-Host "                                                                                         Data failed to be added." -ForegroundColor Red
                        }

                        # Prompt the user to press Enter to continue
                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host
                    }
                    2 {
                        # Edit ticket data

                        # Display a header for the edit ticket data section.
                        Write-Host ""
                        Write-Host "                                                                                         🅴🅳🅸🆃 🆃🅸🅲🅺🅴🆃 🅳🅰🆃🅰"
                        Write-Host ""

                        # Initialize variables for price and tax.
                        $newPrice = 0
                        $newTax = 0

                        # Prompt the user to input the ticket ID of the ticket to be changed, only accept numbers.
                        while ($true) {
                            try {
                                $ticketID = [int] (Read-Host "                                                                                         Input the TicketID to be changed (Enter 0 to exit)")
                                if ($ticketID -eq 0) {
                                    Write-Output "                                                                                         Exiting the edit ticket data menu..."
                                    break
                                }
                                $sqlCommand.CommandText = "SELECT COUNT(*) FROM Ticket WHERE TicketID = $ticketID"
                                $count = $sqlCommand.ExecuteScalar()
                                if ($count -eq 0) {
                                    Write-Host "                                                                                         Ticket ID not found in the database." -ForegroundColor Red
                                    continue
                                } else {
                                    break
                                }
                            }
                            catch {
                                # If the input is not a valid number, display an error message.
                                Write-Host "                                                                                         Ticket ID can only be input by number, please try again." -ForegroundColor Red
                                Write-Output ""
                            }
                        }

                        if ($ticketID -eq 0) {
                            # Prompt the user to press Enter to continue
                            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                            $null = Read-Host
                            break
                        }

                        # Display a menu of options for the user to choose from.
                        Write-Host ""
                        Write-Output "                                                                                         Select the data to be changed:"
                        Write-Output "                                                                                         1. Ticket Type"
                        Write-Output "                                                                                         2. Ticket Price"
                        Write-Output "                                                                                         3. Ticket Tax"
                        Write-Output "                                                                                         4. Quantity Available"

                        # Prompt the user to select an option from the menu.
                        $ubahMenu = Read-Host "                                                                                         Your choice "

                        # Use a switch statement to handle the user's menu selection.
                        switch ($ubahMenu) {
                            1 {
                                $newTicketType = Read-Host "                                                                                         Input new Ticket Type"
                                $sqlCommand.CommandText = "UPDATE Ticket SET TicketType = '$newTicketType' WHERE TicketID = $ticketID"
                            }
                            2 {
                                # Prompt the user to input the ticket price.
                                while ($true) {
                                    try {
                                        $newPrice = [double] (Read-Host "                                                                                         Input Ticket Price")
                                        break
                                    }
                                    catch {
                                        # If the input is not a valid number, display an error message.
                                        Write-Host "                                                                                         Ticket Price can only be input by number, please try again." -ForegroundColor Red
                                        Write-Output ""
                                    }
                                }

                                $sqlCommand.CommandText = "UPDATE Ticket SET Price = $newPrice WHERE TicketID = $ticketID"
                            }
                            3 {
                                # Prompt the user to input the ticket tax.
                                while ($true) {
                                    try {
                                        $newTax = [double] (Read-Host "                                                                                         Input Ticket Tax  ")
                                        break
                                    }
                                    catch {
                                        # If the input is not a valid number, display an error message.
                                        Write-Host "                                                                                         Ticket Tax can only be input by number, please try again." -ForegroundColor Red
                                        Write-Output ""
                                    }
                                }

                                $sqlCommand.CommandText = "UPDATE Ticket SET Tax = $newTax WHERE TicketID = $ticketID"
                            }
                            4 {
                                # Prompt the user to input the quantity available.
                                while ($true) {
                                    try {
                                        $newQuantityAvailable = [int] (Read-Host "                                                                                         Input Quantity Available")
                                        break
                                    }
                                    catch {
                                        # If the input is not a valid integer, display an error message.
                                        Write-Host "                                                                                         Quantity Available must be an integer, please try again." -ForegroundColor Red
                                        Write-Output ""
                                    }
                                 }
                                 $sqlCommand.CommandText = "UPDATE Ticket SET QuantityAvailable = $newQuantityAvailable WHERE TicketID = $ticketID"
                            }
                            default {
                                Write-Host "                                                                                         Invalid menu. Please enter a valid menu." -ForegroundColor Red
                                continue
                            }
                        }

                        # Execute the SQL command to update the database.
                        $rowsAffected = $sqlCommand.ExecuteNonQuery()

                        # Display a message indicating whether the data was changed successfully or not.
                        if ($rowsAffected -eq 1) {
                            Write-Host "                                                                                         Data changed successfully." -ForegroundColor Green
                        } else {
                            Write-Host "                                                                                         Data failed to be modified." -ForegroundColor Red
                        }

                        # Prompt the user to press Enter to continue
                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host
                        
                    }
                    3 {
                            # Display ticket data

                            # Display a header for the display ticket data section.
                            Write-Host ""
                            Write-Host "                                                                                         🅳🅸🆂🅿🅻🅰🆈 🆃🅸🅲🅺🅴🆃 🅳🅰🆃🅰"
                            Write-Host ""

                            # Set the SQL command text to select all data from the Ticket table
                            $sqlCommand.CommandText = "SELECT * FROM Ticket"

                            # Execute the SQL command and store the result in a data reader object
                            $dataReader = $sqlCommand.ExecuteReader()

                            # Create a new DataTable object to store the results
                            $table = New-Object "System.Data.DataTable"

                            # Load the data from the data reader into the DataTable
                            $table.Load($dataReader)

                            # Format the DataTable as a table and store it as a string
                            $tableOutput = $table | Format-Table -AutoSize | Out-String

                            # Define the number of spaces to shift the table to the right
                            $shiftAmount = 85

                            # Split the table output into lines
                            $lines = $tableOutput -split "`r`n"

                            # Shift each line to the right by adding spaces
                            $shiftedLines = foreach ($line in $lines) {
                                $line.PadLeft($shiftAmount + $line.Length)
                            }

                            # Join the shifted lines back into a single string
                            $shiftedOutput = $shiftedLines -join "`r`n"

                            # Display the shifted table
                            Write-Host $shiftedOutput

                            # Close the data reader
                            $dataReader.Close()

                            # Prompt the user to press Enter to continue
                            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                            $null = Read-Host
                    }
                    4 {
                        # Delete ticket data

                        # Delete a header for the display ticket data section.
                        Write-Host ""
                        Write-Host "                                                                                         🅳🅴🅻🅴🆃🅴 🆃🅸🅲🅺🅴🆃 🅳🅰🆃🅰"
                        Write-Host ""
                        # Prompt the user to input the ticket ID of the ticket to be deleted, only accept numbers.
                        while ($true) {
                            try {
                                $ticketID = [int] (Read-Host "                                                                                         Input the TicketID to be deleted (Enter 0 to exit)")
                                if ($ticketID -eq 0) {
                                    break  # Exit the loop if input is 0
                                }
                                $sqlCommand.CommandText = "SELECT COUNT(*) FROM Ticket WHERE TicketID = $ticketID"
                                $count = $sqlCommand.ExecuteScalar()
                                if ($count -eq 0) {
                                    Write-Host "                                                                                         Ticket ID not found in the database." -ForegroundColor Red
                                    continue
                                } else {
                                    break
                                }
                            }
                            catch {
                                # If the input is not a valid number, display an error message.
                                Write-Host -NoNewLine "                                                                                         Ticket ID can only be input by number, please try again." -ForegroundColor Red
                                Write-Output ""
                            }
                        }

                        if ($ticketID -ne 0) {
                            # Check if there are any purchases associated with the ticket
                            $sqlCommand.CommandText = "SELECT COUNT(*) FROM Purchase WHERE TicketID = $ticketID"
                            $count = $sqlCommand.ExecuteScalar()

                            if ($count -gt 0) {
                                # Prompt the user to confirm the deletion of the ticket and its associated purchases
                                $confirm = Read-Host "                                                                                         This ticket has associated purchases. Deleting it will also delete the associated purchase records. Are you sure you want to proceed? (Y/N)"
                                if ($confirm -eq "Y") {
                                    # Execute a SQL DELETE query to delete the associated purchase records
                                    $sqlCommand.CommandText = "DELETE FROM Purchase WHERE TicketID = $ticketID"
                                    $rowsAffected = $sqlCommand.ExecuteNonQuery()

                                    # Execute a SQL DELETE query to delete the ticket
                                    $sqlCommand.CommandText = "DELETE FROM Ticket WHERE TicketID = $ticketID"
                                    $rowsAffected += $sqlCommand.ExecuteNonQuery()

                                    if ($rowsAffected -gt 0) {
                                        Write-Host "                                                                                         Ticket data and associated purchase records deleted successfully!" -ForegroundColor Green
                                    } else {
                                        Write-Host "                                                                                         Failed to delete ticket data." -ForegroundColor Red
                                    }
                                } else {
                                    Write-Host "                                                                                         Deletion canceled by user." -ForegroundColor Yellow
                                }
                            } else {
                                # No associated purchases, directly delete the ticket
                                $confirm = Read-Host "                                                                                         Are you sure you want to delete the ticket with this ID? (Y/N)"
                                if ($confirm -eq "Y") {
                                    $sqlCommand.CommandText = "DELETE FROM Ticket WHERE TicketID = $ticketID"
                                    $rowsAffected = $sqlCommand.ExecuteNonQuery()

                                    if ($rowsAffected -eq 1) {
                                        Write-Host "                                                                                         Ticket data deleted successfully!" -ForegroundColor Green
                                    } else {
                                        Write-Host "                                                                                         Failed to delete ticket data." -ForegroundColor Red
                                    }
                                } else {
                                    Write-Host "                                                                                         Deletion canceled by user." -ForegroundColor Yellow
                                }
                            }

                            # Prompt the user to press Enter to continue
                            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                            $null = Read-Host
                        }
                        else {
                            # Exit the manage tickets menu
                            Write-Output "                                                                                         Exiting the manage tickets menu..."

                            # Prompt the user to press Enter to continue
                            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                            $null = Read-Host
                        }

                    }
                    0 {
                        Write-Output "                                                                                         Exiting the manage tickets menu..."

                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host
                    }
                    default {
                        Write-Host "                                                                                         Invalid menu. Please enter a valid menu." -ForegroundColor Red

                        # Prompt the user to press Enter to continue
                        Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
                        $null = Read-Host
                    }
                }
            } while ($menu -ne "0")

            break
        }
        3 {
            Write-Host "                                                                                         Exiting Coldplay ticketing system..."
            break
        }
        default {
            Write-Host "                                                                                         Invalid choice. Please try again."
            Write-Host -NoNewLine "                                                                                         Press Enter to continue..."
            $null = Read-Host
        }
    }

}until ($choice -eq 3)

$sqlConnection.Close()
  