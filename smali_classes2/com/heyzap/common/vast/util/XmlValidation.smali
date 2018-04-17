.class public Lcom/heyzap/common/vast/util/XmlValidation;
.super Ljava/lang/Object;
.source "XmlValidation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "XmlTools"

    sput-object v0, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    const-string v1, "Beginning XSD validation."

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 30
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 33
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v0

    .line 37
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    sget-object v0, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    const-string v1, "Completed XSD validation.."

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    sget-object v1, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :catch_2
    move-exception v0

    .line 45
    sget-object v1, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :catch_3
    move-exception v0

    .line 47
    sget-object v1, Lcom/heyzap/common/vast/util/XmlValidation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const/4 v0, 0x0

    goto :goto_1
.end method
