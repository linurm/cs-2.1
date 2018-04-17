.class public Lcom/heyzap/exchange/ExchangeClient;
.super Lcom/heyzap/common/lifecycle/AdDisplay;
.source "ExchangeClient.java"

# interfaces
.implements Lcom/heyzap/common/banner/BannerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/exchange/ExchangeClient$2;,
        Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;,
        Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;
    }
.end annotation


# static fields
.field private static ALL_FEATURES:[Ljava/lang/String;


# instance fields
.field private adId:Ljava/lang/String;

.field private bannerView:Lcom/heyzap/common/mraid/MRAIDView;

.field public final completionListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
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

.field private extraData:Ljava/lang/String;

.field public final fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field private interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

.field private listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

.field private markup:Ljava/lang/String;

.field private ref:Lcom/heyzap/internal/ContextReference;

.field private reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

.field private requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

.field private score:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "inlineVideo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "storePicture"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/exchange/ExchangeClient;->ALL_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ContextReference;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/heyzap/exchange/ExchangeRequestParams;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 44
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 45
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->completionListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->extraData:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    .line 96
    invoke-direct/range {p0 .. p11}, Lcom/heyzap/exchange/ExchangeClient;->initialize(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ContextReference;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/heyzap/exchange/ExchangeRequestParams;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 44
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 45
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->completionListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->extraData:Ljava/lang/String;

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v2, "ad"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    const-string v3, "markup"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    const-string v3, "format"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    invoke-static {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->valueOf(I)Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    move-result-object v4

    .line 80
    const-string v2, "auction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    const-string v2, "extras"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    const-string v2, "score"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 85
    invoke-direct/range {v1 .. v12}, Lcom/heyzap/exchange/ExchangeClient;->initialize(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    new-instance v2, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;

    invoke-direct {v2, v1}, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 88
    :catch_1
    move-exception v1

    .line 89
    new-instance v2, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;

    invoke-direct {v2, v1}, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 90
    :catch_2
    move-exception v1

    .line 91
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/heyzap/exchange/ExchangeClient;->execute(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static execute(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ContextReference;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/exchange/ResponseHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->create(Landroid/content/Context;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/heyzap/exchange/ExchangeRequestParams;->forCreativeTypes(Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v6

    .line 193
    new-instance v0, Lcom/heyzap/exchange/ResponseHandler;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/heyzap/exchange/ResponseHandler;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/internal/ContextReference;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 195
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, v6, v0}, Lcom/heyzap/common/net/APIClient;->simplePost(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    .line 197
    return-object v1
.end method

.method public static fetch(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ContextReference;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/exchange/ExchangeClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v6

    .line 148
    new-instance v0, Lcom/heyzap/exchange/ExchangeClient$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/heyzap/exchange/ExchangeClient$1;-><init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 181
    return-object v6
.end method

.method private initialize(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/heyzap/exchange/ExchangeRequestParams;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ContextReference;",
            "Lcom/heyzap/exchange/ExchangeEventReporter;",
            "Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/heyzap/exchange/ExchangeRequestParams;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeClient;->ref:Lcom/heyzap/internal/ContextReference;

    .line 101
    new-instance v1, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    invoke-direct {v1, p0, p0}, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;-><init>(Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/exchange/ExchangeClient;)V

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    .line 102
    iput-object p4, p0, Lcom/heyzap/exchange/ExchangeClient;->creativeTypes:Ljava/util/EnumSet;

    .line 103
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->adId:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->score:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->extraData:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->url:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

    .line 109
    iput-object p2, p0, Lcom/heyzap/exchange/ExchangeClient;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    .line 111
    sget-object v1, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    invoke-virtual {p3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance v1, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;

    invoke-direct {v1, p3, p4}, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;-><init>(Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;)V

    throw v1

    .line 114
    :pswitch_0
    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {p4, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {p1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    sget-object v5, Lcom/heyzap/exchange/ExchangeClient;->ALL_FEATURES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    iget-object v7, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    const/4 v8, 0x0

    move-object/from16 v9, p11

    invoke-direct/range {v1 .. v9}, Lcom/heyzap/common/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/heyzap/common/mraid/MRAIDViewListener;Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;ZLcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v1, Lcom/heyzap/common/mraid/MRAIDInterstitial;

    invoke-virtual {p1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    sget-object v5, Lcom/heyzap/exchange/ExchangeClient;->ALL_FEATURES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    iget-object v7, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    invoke-direct/range {v1 .. v7}, Lcom/heyzap/common/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/heyzap/common/mraid/MRAIDInterstitialListener;Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;)V

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {p4, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;

    invoke-direct {v1, p3, p4}, Lcom/heyzap/exchange/ExchangeClient$IllegalContentException;-><init>(Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;Ljava/util/EnumSet;)V

    throw v1

    .line 128
    :cond_1
    new-instance v1, Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-virtual {p1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    iget-object v4, p0, Lcom/heyzap/exchange/ExchangeClient;->listener:Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/heyzap/common/vast/VASTInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;)V

    iput-object v1, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bindDisplayWithParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    invoke-virtual {v0, p0, p1}, Lcom/heyzap/exchange/ExchangeEventReporter;->bindDisplay(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    .line 227
    :cond_0
    return-void
.end method

.method public destroyBanner()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->destroy()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getContextRef()Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->ref:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method public getMarkup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->markup:Ljava/lang/String;

    return-object v0
.end method

.method public getRealBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    return-object v0
.end method

.method public getRequestParams()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->requestParams:Lcom/heyzap/exchange/ExchangeRequestParams;

    return-object v0
.end method

.method public getScore()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->score:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->creativeTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    invoke-interface {v0}, Lcom/heyzap/exchange/ExchangeInterstitialInterface;->load()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->bannerView:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->load()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    invoke-interface {v0}, Lcom/heyzap/exchange/ExchangeInterstitialInterface;->close()Z

    move-result v0

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->creativeTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0, p3}, Lcom/heyzap/exchange/ExchangeClient;->bindDisplayWithParams(Ljava/util/Map;)V

    .line 209
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->SUCCESS:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient;->interstitial:Lcom/heyzap/exchange/ExchangeInterstitialInterface;

    invoke-interface {v0, p1, p2}, Lcom/heyzap/exchange/ExchangeInterstitialInterface;->show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 213
    :cond_0
    return-void
.end method
