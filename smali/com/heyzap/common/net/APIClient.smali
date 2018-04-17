.class public Lcom/heyzap/common/net/APIClient;
.super Ljava/lang/Object;
.source "APIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/net/APIClient$GlobalCookieSpecFactory;,
        Lcom/heyzap/common/net/APIClient$GlobalCookieSpec;
    }
.end annotation


# static fields
.field private static final BASE_ENDPOINT:Ljava/lang/String; = "/in_game_api/ads/"

.field public static DOMAIN:Ljava/lang/String; = null

.field private static final USER_AGENT:Ljava/lang/String; = "Heyzap Android Client"

.field private static client:Lcom/heyzap/http/AsyncHttpClient;

.field private static cookieStore:Lcom/heyzap/http/SDKCookieStore;

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/heyzap/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    .line 42
    const-string v0, "ads.heyzap.com"

    sput-object v0, Lcom/heyzap/common/net/APIClient;->DOMAIN:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/heyzap/common/net/APIClient;->lock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/heyzap/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/heyzap/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    .line 50
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ExecutorService;)V

    .line 51
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/heyzap/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    const-string v1, "global"

    new-instance v2, Lcom/heyzap/common/net/APIClient$GlobalCookieSpecFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heyzap/common/net/APIClient$GlobalCookieSpecFactory;-><init>(Lcom/heyzap/common/net/APIClient$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 52
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/heyzap/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.cookie-policy"

    const-string v2, "global"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 53
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/heyzap/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/net/APIClient$1;

    invoke-direct {v1}, Lcom/heyzap/common/net/APIClient$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/heyzap/common/net/APIClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/heyzap/common/net/APIClient;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lcom/heyzap/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    return-object v0
.end method

.method public static augmentParams(Lcom/heyzap/http/RequestParams;Landroid/content/Context;)Lcom/heyzap/http/RequestParams;
    .locals 2

    .prologue
    .line 189
    sget-object v1, Lcom/heyzap/common/net/APIClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    if-nez p0, :cond_0

    .line 191
    :try_start_0
    new-instance p0, Lcom/heyzap/http/RequestParams;

    invoke-direct {p0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->extraParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/http/RequestParams;->merge(Ljava/util/Map;)V

    .line 196
    monitor-exit v1

    return-object p0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static cancelRequests(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/heyzap/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 170
    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v0}, Lcom/heyzap/http/SDKCookieStore;->clear()V

    .line 175
    new-instance v0, Lcom/heyzap/http/SDKCookieStore;

    invoke-direct {v0, p0}, Lcom/heyzap/http/SDKCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    .line 176
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    sget-object v1, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v0, v1}, Lcom/heyzap/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 177
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/heyzap/common/net/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 82
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/common/net/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 86
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 2

    .prologue
    .line 95
    invoke-static {p0}, Lcom/heyzap/common/net/APIClient;->init(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/net/APIClient$2;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/heyzap/common/net/APIClient$2;-><init>(Lcom/heyzap/http/RequestParams;Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    if-eqz p0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/heyzap/common/net/APIClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_0
    :goto_0
    return-object p0

    .line 181
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/heyzap/common/net/APIClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/in_game_api/ads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/net/APIClient;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/heyzap/common/net/APIClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/heyzap/http/SDKCookieStore;

    invoke-direct {v0, p0}, Lcom/heyzap/http/SDKCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    .line 71
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    sget-object v2, Lcom/heyzap/common/net/APIClient;->cookieStore:Lcom/heyzap/http/SDKCookieStore;

    invoke-virtual {v0, v2}, Lcom/heyzap/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit v1

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    const-string v0, "HTTP %s %s?%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 148
    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 152
    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/heyzap/common/net/APIClient;->init(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/net/APIClient$3;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/heyzap/common/net/APIClient$3;-><init>(Lcom/heyzap/http/RequestParams;Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public static simpleGet(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;
    .locals 2

    .prologue
    .line 121
    const-string v0, "GET"

    invoke-virtual {p2}, Lcom/heyzap/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/heyzap/common/net/APIClient;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public static simplePost(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;
    .locals 2

    .prologue
    .line 141
    const-string v1, "POST"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/heyzap/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/heyzap/common/net/APIClient;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static simplePost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;
    .locals 6

    .prologue
    .line 136
    const-string v1, "POST"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/heyzap/common/net/APIClient;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/heyzap/common/net/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
