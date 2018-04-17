.class Lcom/heyzap/http/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final BUFFER_SIZE:I = 0x800

.field private static final BUILDER:Ljava/lang/StringBuilder;

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

.field private static final HEADER_JSON_CONTENT:Lorg/apache/http/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_ELAPSED:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final contentEncoding:Lorg/apache/http/Header;

.field private final kvParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final streamParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xacc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_TRUE:[B

    .line 62
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_FALSE:[B

    .line 63
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 64
    const-string v0, "name"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_NAME:[B

    .line 65
    const-string v0, "type"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 66
    const-string v0, "contents"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 67
    const-string v0, "_elapsed"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    .line 69
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    .line 71
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    .line 88
    if-eqz p1, :cond_0

    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    :goto_0
    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static escape(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 262
    if-nez p0, :cond_0

    .line 263
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 319
    :goto_0
    return-object v0

    .line 267
    :cond_0
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, -0x1

    .line 270
    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v3, :cond_6

    .line 271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 272
    sparse-switch v0, :sswitch_data_0

    .line 296
    if-ltz v0, :cond_1

    const/16 v4, 0x1f

    if-le v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2

    const/16 v4, 0x9f

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_5

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_5

    .line 297
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v5, v0, 0x4

    move v0, v1

    .line 300
    :goto_2
    if-ge v0, v5, :cond_4

    .line 301
    sget-object v6, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    :sswitch_0
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v2

    .line 309
    goto :goto_1

    .line 277
    :sswitch_1
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 280
    :sswitch_2
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 283
    :sswitch_3
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 286
    :sswitch_4
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 289
    :sswitch_5
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 292
    :sswitch_6
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 303
    :cond_4
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 305
    :cond_5
    sget-object v4, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 312
    :cond_6
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :try_start_0
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 319
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    if-nez p4, :cond_0

    .line 97
    const-string p4, "application/octet-stream"

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    new-instance v1, Lcom/heyzap/http/RequestParams$StreamWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/heyzap/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 119
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x800

    const/16 v12, 0x7b

    const/16 v11, 0x22

    const/16 v10, 0x2c

    const/16 v9, 0x3a

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output stream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 156
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v2, v0

    .line 163
    :goto_0
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write(I)V

    .line 166
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 170
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget-object v3, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 176
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 189
    :goto_3
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 159
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    goto :goto_0

    .line 176
    :cond_2
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_2

    .line 177
    :cond_3
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 179
    :cond_4
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 181
    :cond_5
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 183
    :cond_6
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 186
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 193
    :cond_8
    new-array v3, v8, [B

    .line 196
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/http/RequestParams$StreamWrapper;

    .line 201
    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 204
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 205
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write(I)V

    .line 208
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 210
    iget-object v0, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 214
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 216
    iget-object v0, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 220
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 222
    invoke-virtual {v2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 225
    new-instance v0, Lcom/heyzap/http/Base64OutputStream;

    const/16 v7, 0x12

    invoke-direct {v0, v2, v7}, Lcom/heyzap/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 230
    :goto_5
    iget-object v7, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 231
    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v7}, Lcom/heyzap/http/Base64OutputStream;->write([BII)V

    goto :goto_5

    .line 235
    :cond_9
    invoke-virtual {v0}, Lcom/heyzap/http/Base64OutputStream;->close()V

    .line 238
    invoke-virtual {v2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 239
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 240
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 246
    :cond_a
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 247
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploaded JSON in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 255
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 256
    return-void
.end method
