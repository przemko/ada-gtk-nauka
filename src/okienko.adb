-- okienko.adb
--
-- Tworzenie i otwieranie okienka.
--

with Gtk.Main;
with Gtk.Enums;
with Gtk.Window;

procedure Okienko is
   Main_Window : Gtk.Window.Gtk_Window;
begin
   --Gtk.Main.Set_Locale;
   Gtk.Main.Init;
   Gtk.Window.Gtk_New (Window => Main_Window,
                       The_Type => Gtk.Enums.Window_Toplevel);
   Gtk.Window.Set_Title (Window => Main_Window,
                         Title => "Glowne okienko");
   Gtk.Window.Show_All (Main_Window);
   Gtk.Main.Main;
end Okienko;
