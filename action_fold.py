import win32api, win32con
from pyautogui import press, typewrite, hotkey

def click(x,y):
      win32api.SetCursorPos((x,y))
      win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN,x,y,0,0)
      win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP,x,y,0,0)

click(800,500)

press('f5')



