.class public Lcom/heyzap/house/request/FetchRequest;
.super Ljava/lang/Object;
.source "FetchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/request/FetchRequest$Factory;,
        Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;
    }
.end annotation


# static fields
.field private static gameOrientation:Ljava/lang/String;

.field private static host:Ljava/lang/String;


# instance fields
.field private additionalParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private campaignId:Ljava/lang/Integer;

.field private creativeId:Ljava/lang/Integer;

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

.field private debugEnabled:Ljava/lang/Boolean;

.field private endpoint:Ljava/lang/String;

.field private isImmediate:Ljava/lang/Boolean;

.field private maxCount:I

.field private randomStrategyEnabled:Ljava/lang/Boolean;

.field private rejectedImpressionId:Ljava/lang/String;

.field private remainingTries:I

.field private request:Lcom/heyzap/house/request/AdRequest;

.field private response:Lorg/json/JSONObject;

.field private responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

.field private secure:Ljava/lang/Boolean;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ads.heyzap.com"

    sput-object v0, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/Boolean;Lcom/heyzap/house/request/AdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/heyzap/house/request/AdRequest;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->response:Lorg/json/JSONObject;

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    .line 37
    const-string v0, "/in_game_api/ads/fetch_ad"

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->endpoint:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->secure:Ljava/lang/Boolean;

    .line 39
    iput-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    .line 43
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/util/EnumSet;

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    .line 56
    iput-object p2, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/util/EnumSet;

    .line 58
    iput-object p3, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    .line 59
    iput-object p4, p0, Lcom/heyzap/house/request/FetchRequest;->request:Lcom/heyzap/house/request/AdRequest;

    .line 60
    return-void
.end method

.method public static setDefaultHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    if-nez p0, :cond_0

    const-string p0, "ads.heyzap.com"

    :cond_0
    sput-object p0, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public static updateOrientation(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_0

    const-string v0, "landscape"

    :goto_0
    sput-object v0, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    .line 73
    return-void

    .line 72
    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/heyzap/house/request/FetchRequest;->isValid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "bad_request"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p0, v2}, Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;->onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/request/FetchRequest;->incrementTries()V

    .line 175
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Lcom/heyzap/house/handler/NativeFetchHandler;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/handler/NativeFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->setCallback(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V

    .line 183
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/heyzap/house/request/FetchRequest$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/heyzap/house/request/FetchRequest$1;-><init>(Lcom/heyzap/house/request/FetchRequest;Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractFetchHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Lcom/heyzap/house/handler/InterstitialFetchHandler;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    goto :goto_1
.end method

.method public getAdRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->request:Lcom/heyzap/house/request/AdRequest;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDebugEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getParams(Landroid/content/Context;)Lcom/heyzap/http/RequestParams;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is NULL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v4, Lcom/heyzap/http/RequestParams;

    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    invoke-direct {v4, v0}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/util/EnumSet;

    sget-object v2, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    const-string v2, "creative_type"

    invoke-virtual {v4, v2, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "orientation"

    invoke-virtual {v4, v0}, Lcom/heyzap/http/RequestParams;->containsKey(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    sget-object v0, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 101
    invoke-static {p1}, Lcom/heyzap/house/request/FetchRequest;->updateOrientation(Landroid/content/Context;)V

    .line 103
    :cond_1
    const-string v0, "orientation"

    sget-object v2, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 107
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    const-string v0, "orientation"

    invoke-virtual {v4, v0}, Lcom/heyzap/http/RequestParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v6, "landscape"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-gt v3, v2, :cond_4

    :cond_3
    const-string v6, "portrait"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-le v2, v3, :cond_d

    :cond_4
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 118
    :goto_2
    const-string v3, "device_width"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "device_height"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "supported_features"

    const-string v2, "chromeless,js_visibility_callback"

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 126
    const-string v0, "tag"

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    invoke-static {v2}, Lcom/heyzap/house/model/AdModel;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 133
    const-string v0, "rejected_impression_id"

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_5
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    if-le v0, v1, :cond_6

    .line 138
    const-string v0, "max_count"

    iget v1, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    .line 143
    const-string v0, "creative_id"

    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    .line 148
    const-string v0, "campaign_id"

    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    const-string v0, "debug"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    const-string v0, "use_random_strategy_v2"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_a
    return-object v4

    .line 89
    :cond_b
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/util/EnumSet;

    invoke-static {v0}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 112
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 128
    :cond_e
    const-string v0, "tag"

    sget-object v2, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    move v0, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method public getRandomStrategyEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->secure:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    .line 254
    :goto_0
    const-string v1, "%s://%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/heyzap/house/request/FetchRequest;->endpoint:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method public incrementTries()V
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    .line 194
    return-void
.end method

.method public isValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

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

.method public setAdditionalParams(Ljava/util/Map;)V
    .locals 0
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
    .line 201
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    .line 202
    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    .line 234
    return-void
.end method

.method public setCreativeId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    .line 206
    return-void
.end method

.method public setDebugEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    .line 246
    return-void
.end method

.method public setRandomStrategyEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    .line 226
    return-void
.end method

.method public setRejectedImpressionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setResponseHandler(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    .line 68
    return-void
.end method
