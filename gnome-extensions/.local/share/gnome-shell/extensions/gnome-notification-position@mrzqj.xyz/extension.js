const Main = imports.ui.main;
const Gio = imports.gi.Gio;

const SETTINGS_SCHEMA = 'org.gnome.shell.extensions.gnome-notification-position';
const Ext = imports.misc.extensionUtils.getCurrentExtension();
const Settings = Ext.imports.settings;
const Schema = Settings.getSettings(Ext, SETTINGS_SCHEMA);

class Extension
{
    /**
     * Runs when enabling the extension
     */
    enable()
    {
        this.set_position();
        Schema.connect('changed', this.set_position.bind(this));
    }

    /**
     * Runs when disabling the extension.
     */
    disable()
    {
        this.top_center();
        Schema.disconnect(this.set_position);
    }

    set_position()
    {
        let setting_position = Schema.get_enum('position');

        switch (setting_position) {
            case 0:
                this.top_left();
                break;
            case 1:
                this.top_right();
                break;
            case 2:
                this.top_center();
                break;
            default:
                this.top_left();
                break;
        }
    }

    top_left()
    {
        log('Moving notifications to the top left...');

        Main.messageTray._bannerBin.x = (Main.layoutManager.monitors[0].width) -
            (Main.panel.statusArea.dateMenu._messageList.actor.width);
    }

    top_right()
    {
        log('Moving notifications to the top right...');
        Main.messageTray._bannerBin.x = - (Main.layoutManager.monitors[0].width) +
            (Main.messageTray._bannerBin.width = Main.panel.statusArea.dateMenu._messageList.actor.width);
    }

    top_center()
    {
        log('Moving notifications to the top center...');
        Main.messageTray._bannerBin.x = 0;
    }
}

/**
 * Initialises the extension
 */
function init()
{
    return new Extension();
}
