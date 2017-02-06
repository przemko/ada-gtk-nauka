with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Button; use Gtk.Button;

procedure  Button_Clicked  (Object : access Gtk_Button_Record'Class)  is
begin
   Put_Line ("Hi, there!");
end Button_Clicked;
