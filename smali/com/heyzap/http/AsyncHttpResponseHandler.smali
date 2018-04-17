.class public abstract Lcom/heyzap/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/heyzap/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpResponseHandler"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private responseHeaders:[Lorg/apache/http/Header;

.field private useSynchronousMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    .line 103
    iput-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 106
    iput-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    .line 189
    invoke-virtual {p0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method public getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x0

    .line 403
    if-eqz p1, :cond_3

    .line 404
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_3

    .line 407
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 408
    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 428
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    .line 412
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v2

    .line 413
    :goto_0
    :try_start_2
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 415
    const/16 v0, 0x1000

    new-array v6, v0, [B

    move v0, v1

    .line 418
    :goto_1
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 419
    add-int/2addr v0, v1

    .line 420
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 421
    long-to-int v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendProgressMessage(II)V

    goto :goto_1

    .line 412
    :cond_1
    long-to-int v0, v4

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 425
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 430
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 435
    :cond_3
    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 135
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getResponseHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 283
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v6, :cond_0

    .line 284
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v0, v0, v5

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 289
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 290
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v2, v0, v5

    check-cast v2, [B

    check-cast v2, [B

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 300
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 301
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    .line 303
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onProgress(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0

    .line 312
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 313
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_0

    .line 314
    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 318
    :pswitch_6
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->onCancel()V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    iput p1, v0, Landroid/os/Message;->what:I

    .line 367
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onRetry(I)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 339
    :goto_0
    if-eqz v0, :cond_2

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 345
    new-instance v0, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;

    invoke-direct {v0, p0}, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 257
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 265
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendProgressMessage(II)V
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 379
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 381
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 386
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 261
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 253
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 126
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 121
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler;->useSynchronousMode:Ljava/lang/Boolean;

    .line 168
    return-void
.end method
