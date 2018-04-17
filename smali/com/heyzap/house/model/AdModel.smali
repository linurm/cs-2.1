.class public abstract Lcom/heyzap/house/model/AdModel;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;,
        Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException;,
        Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;
    }
.end annotation


# static fields
.field public static DEFAULT_TAG_NAME:Ljava/lang/String; = null

.field public static FORMAT:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x50f2e1f3421e722bL


# instance fields
.field public actionUrl:Ljava/lang/String;

.field private transient adRequest:Lcom/heyzap/house/request/AdRequest;

.field private adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field private additionalEventParams:Ljava/util/Map;
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

.field private creativeId:Ljava/lang/Integer;

.field private creativeSuccess:I

.field protected creativeType:Ljava/lang/String;

.field private displayTtl:I

.field private fetchOnDisplay:Z

.field private fetchTime:J

.field private gamePackage:Ljava/lang/String;

.field private transient hasBeenShown:Z

.field private htmlData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient htmlPath:Ljava/lang/String;

.field protected impressionId:Ljava/lang/String;

.field private transient isFullyCached:Z

.field private isReady:Z

.field private transient nextFetchCallback:Ljava/lang/Runnable;

.field public preCacheHtmlData:Ljava/lang/String;

.field protected requiredOrientation:I

.field private sentClick:Ljava/lang/Boolean;

.field private sentImpression:Ljava/lang/Boolean;

.field private sentIncentiveComplete:Ljava/lang/Boolean;

.field private shouldRefetchIfNotReady:Z

.field private showOnlyAfterContentLoaded:Z

.field private strategy:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private ttl:J

.field public userIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/house/model/AdModel;->FORMAT:Ljava/lang/String;

    .line 79
    const-string v0, "default"

    sput-object v0, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    .line 67
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentIncentiveComplete:Ljava/lang/Boolean;

    .line 74
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentClick:Ljava/lang/Boolean;

    .line 82
    iput-wide v2, p0, Lcom/heyzap/house/model/AdModel;->ttl:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/house/model/AdModel;->fetchTime:J

    .line 86
    iput v4, p0, Lcom/heyzap/house/model/AdModel;->requiredOrientation:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->additionalEventParams:Ljava/util/Map;

    .line 91
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->isReady:Z

    .line 93
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->shouldRefetchIfNotReady:Z

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->htmlData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    iput v4, p0, Lcom/heyzap/house/model/AdModel;->displayTtl:I

    .line 107
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->fetchOnDisplay:Z

    .line 109
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->showOnlyAfterContentLoaded:Z

    .line 110
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->hasBeenShown:Z

    .line 113
    iput-boolean v4, p0, Lcom/heyzap/house/model/AdModel;->isFullyCached:Z

    .line 119
    const-string v0, "ad_strategy"

    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->strategy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->strategy:Ljava/lang/String;

    .line 120
    const-string v0, "promoted_game_package"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->gamePackage:Ljava/lang/String;

    .line 121
    const-string v0, "impression_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->impressionId:Ljava/lang/String;

    .line 122
    const-string v0, "click_url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->actionUrl:Ljava/lang/String;

    .line 123
    const-string v0, "refresh_time"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/heyzap/house/model/AdModel;->ttl:J

    .line 124
    const-string v0, "creative_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/AdModel;->creativeId:Ljava/lang/Integer;

    .line 126
    const-string v0, "display_ttl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "display_ttl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/model/AdModel;->displayTtl:I

    .line 130
    :cond_0
    const-string v0, "show_only_after_content_loaded"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->showOnlyAfterContentLoaded:Z

    .line 131
    return-void
.end method

.method static synthetic access$002(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->sentClick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/house/request/AdRequest;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->adRequest:Lcom/heyzap/house/request/AdRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/model/AdModel;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/heyzap/house/model/AdModel;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/heyzap/house/model/AdModel;->creativeSuccess:I

    return p1
.end method

.method public static normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    sget-object p0, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    .line 458
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onManyImpressions(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 210
    iget-object v3, v0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_2
    invoke-virtual {v0}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 225
    const-string v0, "Already sent impression(s)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    goto :goto_2

    .line 229
    :cond_3
    new-instance v2, Lcom/heyzap/http/RequestParams;

    invoke-direct {v2}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 230
    const-string v3, "impression_ids"

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "ad_unit"

    invoke-virtual {v2, v1, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/register_impression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/heyzap/house/model/AdModel$3;

    invoke-direct {v1, p1}, Lcom/heyzap/house/model/AdModel$3;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0, v2, v1}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract cleanup(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
.end method

.method public getAdRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->adRequest:Lcom/heyzap/house/request/AdRequest;

    return-object v0
.end method

.method public getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method public getAdditionalEventParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->additionalEventParams:Ljava/util/Map;

    return-object v0
.end method

.method public getCreativeId()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCreativeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/heyzap/house/model/AdModel;->creativeSuccess:I

    if-nez v0, :cond_0

    .line 327
    const-string v0, "all"

    .line 335
    :goto_0
    return-object v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/heyzap/house/model/AdModel;->creativeSuccess:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 330
    const-string v0, "some"

    goto :goto_0

    .line 332
    :cond_1
    iget v0, p0, Lcom/heyzap/house/model/AdModel;->creativeSuccess:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 333
    const-string v0, "none"

    goto :goto_0

    .line 335
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->creativeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTtl()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/heyzap/house/model/AdModel;->displayTtl:I

    return v0
.end method

.method protected getEventRequestParams()Lcom/heyzap/http/RequestParams;
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->additionalEventParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Lcom/heyzap/http/RequestParams;

    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->additionalEventParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 302
    :goto_0
    const-string v1, "ad_unit"

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "impression_id"

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "promoted_game_package"

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getGamePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "tag"

    iget-object v2, p0, Lcom/heyzap/house/model/AdModel;->tag:Ljava/lang/String;

    invoke-static {v2}, Lcom/heyzap/house/model/AdModel;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    return-object v0

    .line 299
    :cond_1
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->creativeType:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->gamePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->htmlData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredOrientation()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/heyzap/house/model/AdModel;->requiredOrientation:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hasBeenShown()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->hasBeenShown:Z

    return v0
.end method

.method public hasSentImpression()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isExpired()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 383
    iget-wide v2, p0, Lcom/heyzap/house/model/AdModel;->ttl:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/heyzap/house/model/AdModel;->fetchTime:J

    iget-wide v6, p0, Lcom/heyzap/house/model/AdModel;->ttl:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isFullyCached()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->isFullyCached:Z

    return v0
.end method

.method public isInstalled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->gamePackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->packageIsInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->isReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 140
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentClick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "Already sent click successfully."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 142
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v2

    iget-wide v2, v2, Lcom/heyzap/house/Manager;->lastClickedTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/heyzap/house/Manager;->maxClickDifference:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getEventRequestParams()Lcom/heyzap/http/RequestParams;

    move-result-object v0

    .line 151
    if-eqz p2, :cond_2

    .line 152
    const-string v1, "custom_game_package"

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/register_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/house/model/AdModel$1;

    invoke-direct {v3, p0}, Lcom/heyzap/house/model/AdModel$1;-><init>(Lcom/heyzap/house/model/AdModel;)V

    invoke-static {v1, v2, v0, v3}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 168
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/house/model/AdModel;->onClick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public onImpression(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    const-string v0, "Already sent impression successfully."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/heyzap/house/handler/AttributionHandler;->getInstance()Lcom/heyzap/house/handler/AttributionHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/heyzap/house/handler/AttributionHandler;->didImpression(Landroid/content/Context;Lcom/heyzap/house/model/AdModel;)V

    .line 180
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getEventRequestParams()Lcom/heyzap/http/RequestParams;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/register_impression"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/house/model/AdModel$2;

    invoke-direct {v3, p0}, Lcom/heyzap/house/model/AdModel$2;-><init>(Lcom/heyzap/house/model/AdModel;)V

    invoke-static {v1, v2, v0, v3}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method public sentImpression()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdRequest(Lcom/heyzap/house/request/AdRequest;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->adRequest:Lcom/heyzap/house/request/AdRequest;

    .line 446
    return-void
.end method

.method public setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 323
    return-void
.end method

.method public setAdditionalEventParams(Ljava/util/Map;)V
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
    .line 314
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->additionalEventParams:Ljava/util/Map;

    .line 315
    return-void
.end method

.method public setHasBeenShown(Z)V
    .locals 0

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/heyzap/house/model/AdModel;->hasBeenShown:Z

    .line 656
    return-void
.end method

.method public setHtmlData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel;->htmlData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public setImpressionId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid impression ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->impressionId:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setIsFullyCached(Z)V
    .locals 0

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/heyzap/house/model/AdModel;->isFullyCached:Z

    .line 409
    return-void
.end method

.method public setIsReady(Z)V
    .locals 0

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/heyzap/house/model/AdModel;->isReady:Z

    .line 401
    return-void
.end method

.method public setNextFetchCallback(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->nextFetchCallback:Ljava/lang/Runnable;

    .line 426
    return-void
.end method

.method public setSentImpression(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->sentImpression:Ljava/lang/Boolean;

    .line 280
    return-void
.end method

.method public setShouldRefetchIfNotReady(Z)V
    .locals 0

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/heyzap/house/model/AdModel;->shouldRefetchIfNotReady:Z

    .line 438
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel;->tag:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public shouldRefetchIfNotReady()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->shouldRefetchIfNotReady:Z

    return v0
.end method

.method public showOnlyAfterContentLoaded()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/heyzap/house/model/AdModel;->showOnlyAfterContentLoaded:Z

    return v0
.end method

.method public supportsCurrentOrientation(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 412
    iget v1, p0, Lcom/heyzap/house/model/AdModel;->requiredOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/heyzap/house/model/AdModel;->requiredOrientation:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 485
    const-string v0, "<%s T:%s I:%s CID: %s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getCreativeType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/heyzap/house/model/AdModel;->creativeId:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
