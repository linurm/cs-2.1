.class public Lcom/heyzap/sdk/ads/HeyzapAds;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;,
        Lcom/heyzap/sdk/ads/HeyzapAds$BannerAdSize;,
        Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;,
        Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;,
        Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;,
        Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;,
        Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;,
        Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;,
        Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;,
        Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallback;,
        Lcom/heyzap/sdk/ads/HeyzapAds$Network;
    }
.end annotation


# static fields
.field public static final AMAZON:I = 0x4

.field private static final DISABLE_ALL:I = 0x20

.field public static final DISABLE_AUTOMATIC_FETCH:I = 0x1

.field public static final DISABLE_FIRST_AUTOMATIC_FETCH:I = 0x8

.field public static final DISABLE_MEDIATION:I = 0x10

.field public static final INSTALL_TRACKING_ONLY:I = 0x2

.field public static final NONE:I = 0x0

.field public static final config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field public static framework:Ljava/lang/String; = null

.field static initializationFuture:Ljava/util/concurrent/atomic/AtomicReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static intentionallyDisabled:Z = false

.field public static mediator:Ljava/lang/String; = null

.field public static final minimumSdkVersion:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    return-void
.end method

.method public static assertStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    sget-boolean v1, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return v0

    .line 332
    :cond_0
    const-string v1, "Heyzap needs to be started. Call HeyzapAds.start(\'<publisher_id>\', activity) from either the onCreate or onResume methods in your Activity."

    invoke-static {v1}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setRecentActivity(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public static changeServer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 487
    sput-object p0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static getFlags()I
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    return v0
.end method

.method public static getRemoteData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 382
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lcom/heyzap/common/concurrency/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getCustomPublisherData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 390
    :goto_0
    return-object v0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v0, "The remote data is not a valid JSONObject"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    .line 390
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    .line 388
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "9.0.6"

    return-object v0
.end method

.method public static hasStarted()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    sget-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return v1

    .line 323
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 324
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput p2, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    .line 196
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->startTime:Ljava/lang/Long;

    .line 198
    and-int/lit8 v2, p2, 0x20

    if-lez v2, :cond_1

    .line 199
    const-string v2, "Heyzap is disabled and has not started."

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    sput-boolean v2, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 201
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    const-class v3, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    const-class v3, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 207
    :cond_2
    const-string v2, "Heyzap not started! You must add the following activities to your AndroidManifest.xml application tag: <activity android:name=\"com.heyzap.sdk.ads.HeyzapInterstitialActivity\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" /><activity android:name=\"com.heyzap.sdk.ads.HeyzapVideoActivity\" android:screenOrientation=\"landscape\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" />"

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x1

    sput-boolean v2, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 209
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 266
    const-string v3, "Heyzap encountered a runtime exception and is now disabled. Error: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 267
    sput-boolean v6, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 268
    sget-object v3, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 269
    throw v2

    .line 214
    :cond_3
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/heyzap/internal/Constants;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->packageHasPermissions(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 215
    const-string v2, "Heyzap not started! You must add the following permissions to your AndroidManifest.xml <uses-permission android:name=\"android.permission.INTERNET\" /><uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x1

    sput-boolean v2, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 217
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v3, Lcom/heyzap/internal/Constants;->MINIMUM_SUPPORTED_SDK_VERSION:I

    if-ge v2, v3, :cond_5

    .line 223
    sget-object v2, Lcom/heyzap/internal/DeveloperErrorMessages;->UNSUPPORTED_ANDROID_SDK_VERSION:Ljava/lang/String;

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x1

    sput-boolean v2, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 225
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 230
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    sget-object v3, Lcom/heyzap/internal/Constants;->NEEDED_RECEIVER:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->packageHasReceiver(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 231
    const-string v2, "Heyzap could not find the install broadcast receiver. You may be sacrificing revenue!. Add this to your AndroidManifest.xml: <receiver android:name=\"com.heyzap.sdk.ads.PackageAddedReceiver\"><intent-filter><data android:scheme=\"package\"/><action android:name=\"android.intent.action.PACKAGE_ADDED\"/></intent-filter></receiver>"

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 235
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-static {v2}, Lcom/heyzap/internal/Utils;->probablyHasGooglePlayServices(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 236
    const-string v2, "Google Play Services does not appear to be present. This may reduce your revenue! Find out more here: http://developer.android.com/google/play-services/setup.html"

    invoke-static {v2}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 240
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 242
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->load(Landroid/content/Context;)V

    .line 244
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 245
    :cond_8
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    const-string v3, "amazon"

    iput-object v3, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->store:Ljava/lang/String;

    .line 247
    :cond_9
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object p0, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    .line 249
    if-eqz p3, :cond_a

    .line 250
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v2, v3, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 251
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v2, v3, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 252
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v2, v3, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 255
    :cond_a
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/heyzap/mediation/MediationManager;->start(Landroid/content/Context;)V

    .line 256
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/ads/HeyzapAds$1;

    invoke-direct {v3, p0}, Lcom/heyzap/sdk/ads/HeyzapAds$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static isNetworkInitialized(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getPool()Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isReady()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 399
    goto :goto_0

    .line 404
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 405
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onBackPressed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 406
    if-eqz v0, :cond_3

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    move v0, v1

    .line 412
    goto :goto_0
.end method

.method public static onPurchaseComplete(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 417
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getIapAdDisableTime()J

    move-result-wide v0

    .line 425
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/heyzap/mediation/MediationManager;->setAdsTimeout(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 435
    :cond_1
    :goto_1
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 436
    const-string v1, "usd_price_cents"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "iap_id"

    invoke-virtual {v0, v1, p1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/ads/HeyzapAds$2;

    invoke-direct {v2, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$2;-><init>(Lcom/heyzap/http/RequestParams;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 428
    :catch_1
    move-exception v0

    .line 429
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 430
    :catch_2
    move-exception v0

    .line 431
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setBundleId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 355
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/internal/Utils;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    sget-object v1, Lcom/heyzap/internal/Utils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const-string v0, "HeyzapAds.setBundleId() cannot be called after HeyzapAds.start()"

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HeyzapAds.setBundleId() cannot be called after HeyzapAds.start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    sput-object p0, Lcom/heyzap/internal/Utils;->packageName:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public static setFlags(I)V
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/house/Manager;->setFlags(I)V

    .line 352
    return-void
.end method

.method public static setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    .line 181
    return-void
.end method

.method public static setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 481
    return-void
.end method

.method public static setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 467
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 468
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 469
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 496
    return-void
.end method

.method public static slowClose(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 373
    sput-object p0, Lcom/heyzap/house/Manager;->SLOW_CLOSE:Ljava/lang/Boolean;

    .line 374
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 291
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 282
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1, p2, p3}, Lcom/heyzap/sdk/ads/HeyzapAds;->internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 165
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 306
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_0

    .line 307
    const-string v0, "Heyzap was not successfully started: Context is not an activity, and flag DISABLE_MEDIATION not set."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/heyzap/sdk/ads/HeyzapAds;->internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    goto :goto_0
.end method

.method public static startTestActivity(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "You must call HeyzapAds.start() first"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 172
    check-cast v0, Landroid/app/Activity;

    const-class v1, Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "You need to add the test activity manifest to your AndroidManifest.xml: <activity android:name=\"com.heyzap.sdk.ads.MediationTestActivity\" />"

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
