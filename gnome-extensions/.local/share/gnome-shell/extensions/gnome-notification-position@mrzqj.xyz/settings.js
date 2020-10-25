const Gio = imports.gi.Gio;

function getSettings(extension, schema_id)
{
    let schemaDir = extension.dir.get_child('schemas').get_path();
    let schemaSource = Gio.SettingsSchemaSource.new_from_directory(schemaDir, Gio.SettingsSchemaSource.get_default(), false);
    let schema = schemaSource.lookup(schema_id, false);
    return new Gio.Settings({ settings_schema: schema });
}
