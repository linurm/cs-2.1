.class public Lcom/heyzap/exchange/ResponseHandler;
.super Lcom/heyzap/http/TextHttpResponseHandler;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/exchange/ResponseHandler$NoFillException;,
        Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;,
        Lcom/heyzap/exchange/ResponseHandler$ClientErrorException;
    }
.end annotation


# static fields
.field public static MAX_REDIRECTS:I


# instance fields
.field private bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

.field private completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/exchange/ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private creativeTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Throwable;

.field private exchangeClient:Lcom/heyzap/exchange/ExchangeClient;

.field followedRedirects:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lastStatusCode:I

.field private originalResponseHeaders:[Lorg/apache/http/Header;

.field private ref:Lcom/heyzap/internal/ContextReference;

.field private reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

.field private requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

.field private responseHeaders:[Lorg/apache/http/Header;

.field private responseStr:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/heyzap/exchange/ResponseHandler;->MAX_REDIRECTS:I

    return-void
.end method

.method public constructor <init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/internal/ContextReference;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/exchange/ResponseHandler;",
            ">;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Lcom/heyzap/internal/ContextReference;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/heyzap/exchange/ExchangeRequestParams;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/heyzap/http/TextHttpResponseHandler;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->followedRedirects:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    iput v2, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    .line 42
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    .line 44
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    .line 47
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->originalResponseHeaders:[Lorg/apache/http/Header;

    .line 49
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 50
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->ref:Lcom/heyzap/internal/ContextReference;

    .line 52
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 54
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->url:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

    .line 56
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->exchangeClient:Lcom/heyzap/exchange/ExchangeClient;

    .line 57
    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    .line 61
    iput-object p1, p0, Lcom/heyzap/exchange/ResponseHandler;->completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 62
    iput-object p3, p0, Lcom/heyzap/exchange/ResponseHandler;->ref:Lcom/heyzap/internal/ContextReference;

    .line 63
    iput-object p4, p0, Lcom/heyzap/exchange/ResponseHandler;->creativeTypes:Ljava/util/EnumSet;

    .line 64
    iput-object p7, p0, Lcom/heyzap/exchange/ResponseHandler;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 65
    iput-object p5, p0, Lcom/heyzap/exchange/ResponseHandler;->url:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/heyzap/exchange/ResponseHandler;->requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

    .line 67
    iput-object p2, p0, Lcom/heyzap/exchange/ResponseHandler;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/exchange/ResponseHandler;->setUseSynchronousMode(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public didRedirect()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->followedRedirects:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClient()Lcom/heyzap/exchange/ExchangeClient;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->exchangeClient:Lcom/heyzap/exchange/ExchangeClient;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    if-eqz v0, :cond_2

    .line 179
    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/heyzap/exchange/ResponseHandler;->getResponseHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v0, ""

    .line 197
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 185
    array-length v1, v0

    if-nez v1, :cond_1

    .line 186
    const-string v0, ""

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v0, ""

    goto :goto_0

    .line 197
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOriginalResponseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->originalResponseHeaders:[Lorg/apache/http/Header;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/heyzap/exchange/ResponseHandler;->originalResponseHeaders:[Lorg/apache/http/Header;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 150
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 149
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getOriginalResponseHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->originalResponseHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    return v0
.end method

.method public hasError()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 79
    iput p1, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    .line 80
    iput-object p3, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/heyzap/exchange/ResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    .line 83
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 84
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;

    invoke-direct {v0, p4}, Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 104
    return-void

    .line 85
    :cond_0
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 86
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler$NoFillException;

    invoke-direct {v0}, Lcom/heyzap/exchange/ResponseHandler$NoFillException;-><init>()V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_0

    .line 87
    :cond_1
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_3

    .line 88
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/heyzap/exchange/ResponseHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :cond_2
    :goto_1
    new-instance v1, Lcom/heyzap/exchange/ResponseHandler$ClientErrorException;

    invoke-direct {v1, v0}, Lcom/heyzap/exchange/ResponseHandler$ClientErrorException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_0

    .line 97
    :cond_3
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_4

    .line 98
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;

    invoke-direct {v0, p4}, Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_0

    .line 100
    :cond_4
    iput-object p4, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onRetry(I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 108
    iput p1, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    .line 109
    iput-object p2, p0, Lcom/heyzap/exchange/ResponseHandler;->originalResponseHeaders:[Lorg/apache/http/Header;

    .line 110
    iput-object p3, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/heyzap/exchange/ResponseHandler;->responseHeaders:[Lorg/apache/http/Header;

    .line 114
    iget v0, p0, Lcom/heyzap/exchange/ResponseHandler;->lastStatusCode:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 115
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler$NoFillException;

    invoke-direct {v0}, Lcom/heyzap/exchange/ResponseHandler$NoFillException;-><init>()V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 122
    :try_start_0
    new-instance v0, Lcom/heyzap/exchange/ExchangeClient;

    iget-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->ref:Lcom/heyzap/internal/ContextReference;

    iget-object v2, p0, Lcom/heyzap/exchange/ResponseHandler;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    iget-object v3, p0, Lcom/heyzap/exchange/ResponseHandler;->creativeTypes:Ljava/util/EnumSet;

    iget-object v4, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/heyzap/exchange/ResponseHandler;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/heyzap/exchange/ResponseHandler;->requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

    iget-object v7, p0, Lcom/heyzap/exchange/ResponseHandler;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct/range {v0 .. v7}, Lcom/heyzap/exchange/ExchangeClient;-><init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->exchangeClient:Lcom/heyzap/exchange/ExchangeClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 133
    :goto_2
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->responseStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler$NoFillException;

    invoke-direct {v0}, Lcom/heyzap/exchange/ResponseHandler$NoFillException;-><init>()V

    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    iput-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->error:Ljava/lang/Throwable;

    goto :goto_1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/heyzap/exchange/ResponseHandler;->completionFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2
.end method
