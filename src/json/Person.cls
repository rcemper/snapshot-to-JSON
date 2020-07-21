Class json.Person Extends (%Persistent, %Populate, %JSON.Adaptor) [ Final ]
{

/// Define a unique index for <property>SSN</property>.
Index SSNKey On SSN [ Type = index, Unique ];

/// Define an index for <property>Name</property>.
Index NameIDX On Name [ Data = Name ];

/// Define an index for embedded object property <b>ZipCode</b>.
Index ZipCode On Home.Zip [ Type = bitmap ];

/// Person's name.
Property Name As %String(POPSPEC = "Name()") [ Required ];

/// Person's Social Security number. This is validated using pattern match.
Property SSN As %String(PATTERN = "3N1""-""2N1""-""4N") [ Required ];

/// Person's Date of Birth.
Property DOB As %Date(POPSPEC = "Date()");

/// Person's home address. This uses an embedded object.
Property Home As Address;

/// A collection of strings representing the person's favorite colors.
Property FavoriteColors As list Of %String(POPSPEC = "ValueList("",Red,Orange,Yellow,Green,Blue,Purple,Black,White""):2");
 
}
