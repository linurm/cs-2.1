.class public Lcom/heyzap/http/JsonHttpResponseHandler;
.super Lcom/heyzap/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/heyzap/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/heyzap/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 153
    if-eqz p3, :cond_0

    .line 154
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/heyzap/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/http/JsonHttpResponseHandler$2;-><init>(Lcom/heyzap/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2

    .prologue
    .line 117
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/http/JsonHttpResponseHandler$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/heyzap/http/JsonHttpResponseHandler$1;-><init>(Lcom/heyzap/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/heyzap/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    :cond_2
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 211
    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method
