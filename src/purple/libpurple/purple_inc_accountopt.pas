{$ifdef interface_type}
  PPurpleAccountOption = ^TPurpleAccountOption;
  TPurpleAccountOption = Object
    class function StringNew(Text, Name, DefaultValue: String): PPurpleAccountOption;
  end;
{$endif}

{$ifdef import_func}
function  purple_account_option_string_new(text, pref_name, default_value: PChar): PPurpleAccountOption; cdecl; external LIBPURPLE;
{$endif}

{$ifdef implementation}
class function TPurpleAccountOption.StringNew(Text, Name, DefaultValue: String): PPurpleAccountOption;
begin
  Result := purple_account_option_string_new(_PChar(Text), _PChar(Name), _PChar(DefaultValue));
end;
{$endif}
