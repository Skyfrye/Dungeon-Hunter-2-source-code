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

/* JADX INFO: loaded from: classes.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x002e A[PHI: r6
      0x002e: PHI (r6v10 java.lang.String) = 
      (r6v1 java.lang.String)
      (r6v2 java.lang.String)
      (r6v2 java.lang.String)
      (r6v2 java.lang.String)
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
     binds: [B:7:0x002b, B:27:0x0106, B:21:0x00d6, B:17:0x0061, B:33:0x012e, B:34:0x0130] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x002b. Please report as an issue. */
    static m a(String str) {
        XmlPullParserException e2;
        m mVar;
        IOException e3;
        String attributeValue;
        String text;
        HashMap map;
        m mVar2;
        ArrayList arrayList = new ArrayList();
        StringReader stringReader = new StringReader(str);
        try {
            try {
                XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
                xmlPullParserFactoryNewInstance.setNamespaceAware(false);
                XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
                xmlPullParserNewPullParser.setInput(stringReader);
                String str2 = f294a;
                String str3 = f294a;
                String name = f294a;
                HashMap map2 = null;
                mVar = null;
                for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                    switch (eventType) {
                        case 0:
                            attributeValue = str2;
                            text = str3;
                            map = map2;
                            mVar2 = mVar;
                            try {
                                mVar = mVar2;
                                map2 = map;
                                str3 = text;
                                str2 = attributeValue;
                            } catch (IOException e4) {
                                mVar = mVar2;
                                e3 = e4;
                                a.a(e3);
                                stringReader.close();
                                return mVar;
                            } catch (XmlPullParserException e5) {
                                mVar = mVar2;
                                e2 = e5;
                                a.a(e2);
                                stringReader.close();
                                return mVar;
                            }
                            break;
                        case 1:
                        default:
                            attributeValue = str2;
                            text = str3;
                            map = map2;
                            mVar2 = mVar;
                            mVar = mVar2;
                            map2 = map;
                            str3 = text;
                            str2 = attributeValue;
                            break;
                        case 2:
                            try {
                                name = xmlPullParserNewPullParser.getName();
                                if (name.equals(b)) {
                                    HashMap map3 = map2;
                                    mVar2 = new m();
                                    attributeValue = str2;
                                    text = str3;
                                    map = map3;
                                } else if (name.equals(d)) {
                                    if (mVar != null) {
                                        mVar.b(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "id")));
                                        mVar.a(xmlPullParserNewPullParser.getAttributeValue(f294a, "name"));
                                        mVar.a(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "transactionId")));
                                        mVar.c(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "totalCount")));
                                        mVar.d(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "startNum")));
                                        mVar.e(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "endNum")));
                                        mVar.f(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "returnCode")));
                                        attributeValue = str2;
                                        text = str3;
                                        map = map2;
                                        mVar2 = mVar;
                                    } else {
                                        attributeValue = str2;
                                        text = str3;
                                        map = map2;
                                        mVar2 = mVar;
                                    }
                                } else if (name.equals(h)) {
                                    if (mVar != null) {
                                        mVar.g(i.b(xmlPullParserNewPullParser.getAttributeValue(f294a, "errorCode")));
                                        attributeValue = str2;
                                        text = str3;
                                        map = map2;
                                        mVar2 = mVar;
                                    } else {
                                        attributeValue = str2;
                                        text = str3;
                                        map = map2;
                                        mVar2 = mVar;
                                    }
                                } else if (name.equals(e)) {
                                    attributeValue = str2;
                                    text = str3;
                                    map = new HashMap();
                                    mVar2 = mVar;
                                } else if (name.equals(g)) {
                                    attributeValue = xmlPullParserNewPullParser.getAttributeValue(f294a, "name");
                                    text = str3;
                                    map = map2;
                                    mVar2 = mVar;
                                } else {
                                    attributeValue = str2;
                                    text = str3;
                                    map = map2;
                                    mVar2 = mVar;
                                }
                                mVar = mVar2;
                                map2 = map;
                                str3 = text;
                                str2 = attributeValue;
                            } catch (IOException e6) {
                                e3 = e6;
                                a.a(e3);
                                stringReader.close();
                                return mVar;
                            } catch (XmlPullParserException e7) {
                                e2 = e7;
                                a.a(e2);
                                stringReader.close();
                                return mVar;
                            }
                            break;
                        case 3:
                            String name2 = xmlPullParserNewPullParser.getName();
                            if (name2.equals(b)) {
                                if (mVar != null) {
                                    mVar.a(arrayList);
                                }
                            } else if (name2.equals(e)) {
                                arrayList.add(map2);
                                map2 = null;
                            } else if (name2.equals(g)) {
                                map2.put(str2, str3);
                                str2 = f294a;
                                str3 = f294a;
                            }
                            name = f294a;
                            attributeValue = str2;
                            text = str3;
                            map = map2;
                            mVar2 = mVar;
                            mVar = mVar2;
                            map2 = map;
                            str3 = text;
                            str2 = attributeValue;
                            break;
                        case 4:
                            if (name.equals(g)) {
                                attributeValue = str2;
                                text = xmlPullParserNewPullParser.getText();
                                map = map2;
                                mVar2 = mVar;
                            } else if (!name.equals(h) || mVar == null) {
                                attributeValue = str2;
                                text = str3;
                                map = map2;
                                mVar2 = mVar;
                            } else {
                                mVar.b(xmlPullParserNewPullParser.getText());
                                attributeValue = str2;
                                text = str3;
                                map = map2;
                                mVar2 = mVar;
                            }
                            mVar = mVar2;
                            map2 = map;
                            str3 = text;
                            str2 = attributeValue;
                            break;
                    }
                    return mVar;
                }
                stringReader.close();
            } catch (Throwable th) {
                stringReader.close();
                throw th;
            }
        } catch (IOException e8) {
            e3 = e8;
            mVar = null;
        } catch (XmlPullParserException e9) {
            e2 = e9;
            mVar = null;
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
            if (d.b) {
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
                for (String str2 : mapD.keySet()) {
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
