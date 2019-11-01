import 'package:booking_bus_app/components/modules.dart';

class WidgetComponent {
  static FlatButton flatButton ({
    Widget buttons,
    Color colors,
    @required VoidCallback onPressed,
  }) => FlatButton(
    child: buttons,
    color: colors,
    onPressed: onPressed,
  );
  static TextFormField formField ({
    String hints,
    String label,
    Widget suffix,
    Widget prefix,
    InputBorder borders,
    bool secure: false,
    bool autocorrent : true,
    Icon icon,
    bool enables  = true,
    TextInputType inputType,
    TextEditingController controllers,
    FormFieldValidator valids,
  }) => TextFormField(
    enabled: enables,
    validator: valids,
    obscureText: secure,
    keyboardType: inputType,
    autocorrect: autocorrent,
    controller: controllers,
    decoration: InputDecoration(
      border: borders,
      icon: icon,
      labelText: label,
      hintText: hints,
      suffixIcon: suffix,
      prefixIcon: prefix,
    ),
  );

  static RawMaterialButton buttons(String label, {
    double elevas,
    double radius,
    Color coloring,
    Color textColor,
    FontWeight bolds,
    EdgeInsetsGeometry padding,
    @required VoidCallback onPressed,
  }) => RawMaterialButton(
      elevation: elevas,
      padding: padding,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
      ),
      fillColor: coloring,
      child: Text(label, style: TextStyle(color: textColor, fontWeight: bolds),),
      onPressed: onPressed
  );

  static ListTile listiles (String titles, {
      IconData leads,
      IconData icons,
      @required VoidCallback onPressed,
  }) => ListTile(
      leading: Icon(leads),
      title: Text(titles),
      onTap: onPressed,
      trailing: IconButton(icon: Icon(icons), onPressed: onPressed),
    );

}