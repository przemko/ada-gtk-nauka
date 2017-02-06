-- przycisk.adb
--
-- Przemyslaw Kobylanski <przemko@mac.com>
--
-- 1. utworzenie okienka
-- 2. zwiazanie ze zdarzeniem Destroy okienka zakonczenia programu
-- 3. stworzenie przycisku
-- 4. zwiazanie z kliknieciem przycisku drukowanie komunikatu
-- 5. umieszczenie przycisku w okienku
-- 6. wyswietlenie okienka
-- 7. oczekiwanie na zdarzenia
--

with Gtk.Main;
with Gtk.Enums;
with Gtk.Window;
with Gtk.Widget;
with Gtk.Button;

with Exit_Main;
with Button_Clicked;

procedure Przycisk is

   Main_Window : Gtk.Window.Gtk_Window;
   Button : Gtk.Button.Gtk_Button;

begin
   Gtk.Main.Init;

   Gtk.Window.Gtk_New (Main_Window, Gtk.Enums.Window_Toplevel);
   Gtk.Window.Set_Title (Main_Window, "Okienko z przyciskiem");
   Main_Window.On_Destroy (Exit_Main'Access);
   Gtk.Button.Gtk_New (Button, "Hello");
   Button.On_Clicked (Button_Clicked'Access);
   Main_Window.Add (Button);
   Gtk.Window.Show_All (Main_Window);

   Gtk.Main.Main;
end Przycisk;

