.class public abstract Lcom/heyzap/http/DataAsyncHttpResponseHandler;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpResponseHandler"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    .line 42
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 138
    if-le p1, p2, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_0
    array-length v0, p0

    .line 142
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 145
    :cond_2
    sub-int v1, p2, p1

    .line 146
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    new-array v1, v1, [B

    .line 148
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    return-object v1
.end method


# virtual methods
.method public getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_3

    .line 89
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_3

    .line 92
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 93
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 96
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 97
    const-wide/16 v0, 0x1000

    .line 100
    :cond_1
    :try_start_2
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 102
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 105
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 107
    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lcom/heyzap/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 115
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_3
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 64
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 66
    const/4 v1, 0x0

    :try_start_0
    aget-object v0, v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/heyzap/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "custom onProgressData contains an error"

    invoke-static {v1, v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressData([B)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 53
    return-void
.end method
