.class public Lcom/heyzap/sdk/ads/NativeAd$Ad;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30661315258145bdL


# instance fields
.field private model:Lcom/heyzap/house/model/NativeModel;


# direct methods
.method private constructor <init>(Lcom/heyzap/house/model/NativeModel;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/house/model/NativeModel;Lcom/heyzap/sdk/ads/NativeAd$1;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;-><init>(Lcom/heyzap/house/model/NativeModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/ads/NativeAd$Ad;)Lcom/heyzap/house/model/NativeModel;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getModel()Lcom/heyzap/house/model/NativeModel;

    move-result-object v0

    return-object v0
.end method

.method private getModel()Lcom/heyzap/house/model/NativeModel;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    return-object v0
.end method


# virtual methods
.method public doClick(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    invoke-direct {v0, v1}, Lcom/heyzap/house/handler/ClickHandler;-><init>(Lcom/heyzap/house/model/AdModel;)V

    .line 219
    invoke-virtual {v0, p1}, Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public doImpression()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    sget-object v1, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/NativeModel;->onImpression(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 352
    :catch_2
    move-exception v0

    .line 353
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "developer_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 395
    :catch_1
    move-exception v0

    .line 396
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 397
    :catch_2
    move-exception v0

    .line 398
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getGameRating()D
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "rating"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/NativeModel;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 306
    :catch_2
    move-exception v0

    .line 307
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    return-wide v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 442
    :catch_2
    move-exception v0

    .line 443
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 377
    :goto_0
    return-object p2

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public optDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getDouble(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 422
    :goto_0
    return-object p2

    .line 421
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getInt(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 331
    :goto_0
    return-object p2

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 467
    :goto_0
    return-wide v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 286
    :goto_0
    return-object p2

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method
