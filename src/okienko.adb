-- okienko.adb
--
-- Tworzenie i otwieranie okienka.
--

with Gtk.Main; use Gtk.Main;
with Gtk.Enums; use Gtk.Enums;
with Gtk.Window; use Gtk.Window;
with Gtk.Widget;  use Gtk.Widget;
with GtkAda.Handlers; use Gtkada.Handlers;

procedure Okienko is

   use Widget_Callback;

   procedure  Exit_Main  (Object : access Gtk_Widget_Record'Class)  is
   begin
      Destroy (Object);
      Gtk.Main.Main_Quit;
   end Exit_Main;

   Main_Window : Gtk.Window.Gtk_Window;

begin
   Gtk.Main.Init;
   Gtk.Window.Gtk_New (Window => Main_Window,
            The_Type => Gtk.Enums.Window_Toplevel);
   Gtk.Window.Set_Title (Window => Main_Window,
              Title => "Glowne okienko");

   Widget_Callback.Connect   ( Main_Window,  "destroy",  Widget_Callback.To_Marshaller (Destroy'Access));

   Gtk.Window.Show_All (Main_Window);
   Gtk.Main.Main;
end Okienko;

