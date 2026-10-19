package com.samsungapps.plasma;

import android.util.Xml;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

final class k {

    private static final String f294a = "";
    private static final String b = "SamsungProtocol";
    private static final String c = "request";
    private static final String d = "response";
    private static final String e = "list";
    private static final String f = "param";
    private static final String g = "value";
    private static final String h = "errorString";

    k() {
    }

    /** Parses a SamsungProtocol XML response into an {@link m}; on a parse error the partially filled result is returned. */
    static m a(String str) {
        ArrayList arrayList = new ArrayList();
        StringReader stringReader = new StringReader(str);
        m mVar = null;
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            xmlPullParserFactoryNewInstance.setNamespaceAware(false);
            XmlPullParser parser = xmlPullParserFactoryNewInstance.newPullParser();
            parser.setInput(stringReader);
            String valueName = f294a;
            String valueText = f294a;
            String name = f294a;
            HashMap map = null;
            for (int eventType = parser.getEventType(); eventType != 1; eventType = parser.next()) {
                switch (eventType) {
                    case 2:
                        name = parser.getName();
                        if (name.equals(b)) {
                            mVar = new m();
                        } else if (name.equals(d)) {
                            if (mVar != null) {
                                mVar.b(i.b(parser.getAttributeValue(f294a, "id")));
                                mVar.a(parser.getAttributeValue(f294a, "name"));
                                mVar.a(i.b(parser.getAttributeValue(f294a, "transactionId")));
                                mVar.c(i.b(parser.getAttributeValue(f294a, "totalCount")));
                                mVar.d(i.b(parser.getAttributeValue(f294a, "startNum")));
                                mVar.e(i.b(parser.getAttributeValue(f294a, "endNum")));
                                mVar.f(i.b(parser.getAttributeValue(f294a, "returnCode")));
                            }
                        } else if (name.equals(h)) {
                            if (mVar != null) {
                                mVar.g(i.b(parser.getAttributeValue(f294a, "errorCode")));
                            }
                        } else if (name.equals(e)) {
                            map = new HashMap();
                        } else if (name.equals(g)) {
                            valueName = parser.getAttributeValue(f294a, "name");
                        }
                        break;
                    case 3:
                        String endName = parser.getName();
                        if (endName.equals(b)) {
                            if (mVar != null) {
                                mVar.a(arrayList);
                            }
                        } else if (endName.equals(e)) {
                            arrayList.add(map);
                            map = null;
                        } else if (endName.equals(g)) {
                            map.put(valueName, valueText);
                            valueName = f294a;
                            valueText = f294a;
                        }
                        name = f294a;
                        break;
                    case 4:
                        if (name.equals(g)) {
                            valueText = parser.getText();
                        } else if (name.equals(h) && mVar != null) {
                            mVar.b(parser.getText());
                        }
                        break;
                    default:
                        break;
                }
            }
        } catch (IOException e2) {
            a.a(e2);
        } catch (XmlPullParserException e3) {
            a.a(e3);
        } finally {
            stringReader.close();
        }
        return mVar;
    }

    static String a(l lVar, b bVar) {
        HashMap mapD = lVar.d();
        int size = mapD != null ? mapD.size() : 0;
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        try {
            xmlSerializerNewSerializer.setOutput(stringWriter);
            xmlSerializerNewSerializer.startDocument("UTF-8", true);
            xmlSerializerNewSerializer.startTag(f294a, b);
            xmlSerializerNewSerializer.attribute(f294a, "deviceModel", bVar.e());
            xmlSerializerNewSerializer.attribute(f294a, "networkType", "1");
            String str = String.format("%d", Integer.valueOf(bVar.b()));
            if (com.samsungapps.plasma.d.b) {
                str = "000";
            }
            xmlSerializerNewSerializer.attribute(f294a, "mcc", str);
            xmlSerializerNewSerializer.attribute(f294a, "mnc", String.format("%02d", Integer.valueOf(bVar.c())));
            xmlSerializerNewSerializer.attribute(f294a, "csc", bVar.d());
            xmlSerializerNewSerializer.attribute(f294a, "lang", "EN");
            xmlSerializerNewSerializer.attribute(f294a, "version", "1.0");
            xmlSerializerNewSerializer.startTag(f294a, c);
            xmlSerializerNewSerializer.attribute(f294a, "id", String.valueOf(lVar.c()));
            xmlSerializerNewSerializer.attribute(f294a, "name", lVar.b());
            xmlSerializerNewSerializer.attribute(f294a, "numParam", String.valueOf(size));
            xmlSerializerNewSerializer.attribute(f294a, "transactionId", String.valueOf(lVar.a()));
            if (mapD != null) {
                for (Object obj : mapD.keySet()) {
                    String str2 = (String) obj;
                    xmlSerializerNewSerializer.startTag(f294a, f);
                    xmlSerializerNewSerializer.attribute(f294a, "name", str2);
                    try {
                        xmlSerializerNewSerializer.text((String) mapD.get(str2));
                    } catch (Exception e2) {
                    }
                    xmlSerializerNewSerializer.endTag(f294a, f);
                }
            }
            xmlSerializerNewSerializer.endTag(f294a, c);
            xmlSerializerNewSerializer.endTag(f294a, b);
            xmlSerializerNewSerializer.endDocument();
        } catch (IOException e3) {
            a.a(e3);
        } finally {
            try {
                stringWriter.flush();
                stringWriter.close();
            } catch (IOException e4) {
            }
        }
        return stringWriter.toString();
    }
}
