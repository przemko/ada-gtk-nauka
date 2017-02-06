with Gtk.Widget; use Gtk.Widget;
with Gtk.Main;

procedure  Exit_Main  (Object : access Gtk_Widget_Record'Class)  is
begin
   Destroy (Object);
   Gtk.Main.Main_Quit;
end Exit_Main;
