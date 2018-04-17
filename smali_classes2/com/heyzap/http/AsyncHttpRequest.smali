.class Lcom/heyzap/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isCancelled:Z

.field private isFinished:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/heyzap/http/ResponseHandlerInterface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    .line 46
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 47
    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    .line 50
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 51
    iput-object p2, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 52
    iput-object p3, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 53
    iput-object p4, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    .line 54
    return-void
.end method

.method private makeRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method private makeRequestWithRetries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    iget-object v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    move v3, v1

    .line 115
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :cond_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 123
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnknownHostException exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v3, v0, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 157
    :goto_2
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    iget v6, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    invoke-interface {v5, v6}, Lcom/heyzap/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 163
    const-string v0, "Unhandled exception origin cause"

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    :cond_2
    throw v0

    :cond_3
    move v0, v2

    .line 124
    goto :goto_1

    .line 125
    :catch_2
    move-exception v3

    .line 127
    :try_start_2
    invoke-static {v3}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 132
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NPE in HttpClient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    iget v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v3, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_2

    .line 134
    :catch_3
    move-exception v3

    .line 135
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {v3}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_4

    .line 143
    iget v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v3, v0, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    :goto_3
    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 155
    goto :goto_2

    :cond_4
    move v0, v2

    .line 145
    goto :goto_3

    .line 148
    :catch_4
    move-exception v0

    .line 149
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    iget v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/heyzap/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/heyzap/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v3, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto/16 :goto_2
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 181
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->sendCancelNotification()V

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendStartMessage()V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendFinishMessage()V

    .line 90
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/http/AsyncHttpRequest;->isFinished:Z

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    if-eqz v1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpRequest;->responseHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/heyzap/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_1

    .line 78
    :cond_4
    const-string v1, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
