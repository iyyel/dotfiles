const GObject = imports.gi.GObject;
const Gtk = imports.gi.Gtk;
const GLib = imports.gi.GLib;

const SETTINGS_SCHEMA = 'org.gnome.shell.extensions.gnome-notification-position';
const Ext = imports.misc.extensionUtils.getCurrentExtension();
const Settings = Ext.imports.settings;
const Schema = Settings.getSettings(Ext, SETTINGS_SCHEMA);

const ExtPrefsWidget = GObject.registerClass(
    class ExtPrefsWidget extends Gtk.Box
    {
        _init(params)
        {
            super._init(params);

            this.margin = 20;
            this.set_spacing(10);
            this.set_orientation(Gtk.Orientation.VERTICAL);

            this.connect('destroy', Gtk.main_quit);

            let labelHeading = new Gtk.Label({
                label: 'Here you can choose where you want the notification box to appear.'
            });

            let boxOptions = new Gtk.Box();
            boxOptions.margin_top = 20;
            boxOptions.set_spacing(10);
            boxOptions.set_orientation(Gtk.Orientation.HORIZONTAL);

            let labelPosition = new Gtk.Label({
                label: 'Position'
            });

            let comboPosition = new Gtk.ComboBoxText();
            comboPosition.hexpand = true;
            comboPosition.append('0', 'Top left');
            comboPosition.append('1', 'Top right');
            comboPosition.append('2', 'Top center');

            comboPosition.set_active_id(Schema.get_enum('position').toString());

            comboPosition.connect('changed', function (widget) {
                Schema.set_enum('position', parseInt(widget.get_active_id()));
            });

            boxOptions.add(labelPosition);
            boxOptions.add(comboPosition);

            let buttonPreview = new Gtk.Button({ label: 'Preview' });
            buttonPreview.connect('clicked', function (widget) {
                GLib.spawn_command_line_sync('notify-send Preview');
            });

            this.add(labelHeading);
            this.add(boxOptions);
            this.add(buttonPreview);
        }
    }
);

/**
 * Builds and shows the prefs window.
 */
function buildPrefsWidget()
{
    log('asdadssa');
    const widget = new ExtPrefsWidget();
    widget.show_all();

    return widget;
}

/**
 * Initialises the prefs window.
 */
function init()
{
    //
}
