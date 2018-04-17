.class public Lcom/jirbo/adcolony/AdColony;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColony$a;
    }
.end annotation


# static fields
.field static b:Z

.field static c:Z


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColony;->a:Z

    .line 508
    return-void
.end method

.method static a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 320
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] AdColony pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 321
    sput-boolean v4, Lcom/jirbo/adcolony/a;->r:Z

    .line 322
    sput-boolean v4, Lcom/jirbo/adcolony/a;->B:Z

    move v1, v2

    .line 323
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 325
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 328
    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    .line 329
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    sget-boolean v3, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->c()V

    .line 323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 337
    :cond_2
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] AdColony resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 264
    sput-boolean v2, Lcom/jirbo/adcolony/a;->B:Z

    .line 265
    sput-boolean v2, Lcom/jirbo/adcolony/a;->r:Z

    .line 266
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Landroid/app/Activity;)V

    .line 267
    sput-boolean v2, Lcom/jirbo/adcolony/a;->A:Z

    .line 269
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 270
    if-nez p0, :cond_0

    .line 272
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Activity reference is null. Disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 273
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 311
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/jirbo/adcolony/ADCVideo;

    if-nez v0, :cond_1

    .line 278
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    sget-object v1, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 279
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdColony$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColony$3;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 310
    sput-boolean v2, Lcom/jirbo/adcolony/a;->M:Z

    goto :goto_0
.end method

.method public static activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 404
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 389
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cancelVideo()V
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 445
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->ak:Z

    .line 446
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 448
    :cond_0
    return-void
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "client_options"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "zone_ids"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 62
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColony requires API version 14 or higher."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 63
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lcom/jirbo/adcolony/AdColony$1;

    invoke-direct {v2}, Lcom/jirbo/adcolony/AdColony$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 116
    :cond_2
    sput-boolean v1, Lcom/jirbo/adcolony/AdColony;->c:Z

    .line 118
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-nez v0, :cond_3

    .line 120
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 127
    :cond_3
    sput-boolean v1, Lcom/jirbo/adcolony/AdColony;->b:Z

    .line 129
    new-instance v0, Lcom/jirbo/adcolony/AdColony$a;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColony$a;-><init>(Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/AdColony$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v2, Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {v2}, Lcom/jirbo/adcolony/AdColony$2;-><init>()V

    .line 141
    sget-boolean v3, Lcom/jirbo/adcolony/a;->H:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/jirbo/adcolony/a;->I:Z

    if-eqz v3, :cond_8

    .line 143
    :cond_4
    sget-boolean v3, Lcom/jirbo/adcolony/a;->y:Z

    if-nez v3, :cond_0

    .line 145
    if-nez p2, :cond_5

    .line 147
    const-string v0, "Null App ID - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_5
    if-nez p3, :cond_6

    .line 153
    const-string v0, "Null Zone IDs array - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_6
    array-length v3, p3

    if-nez v3, :cond_7

    .line 159
    const-string v0, "No Zone IDs provided - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_7
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->b(Landroid/app/Activity;)V

    .line 164
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3, p1, p2, p3}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    sput-boolean v6, Lcom/jirbo/adcolony/a;->w:Z

    .line 167
    sput-boolean v6, Lcom/jirbo/adcolony/a;->H:Z

    .line 168
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_8
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-nez v0, :cond_9

    sput-boolean v6, Lcom/jirbo/adcolony/a;->E:Z

    .line 175
    :cond_9
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->ar:Ljava/util/HashMap;

    move v0, v1

    .line 178
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 180
    sget-object v2, Lcom/jirbo/adcolony/a;->ar:Ljava/util/HashMap;

    aget-object v3, p3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    .line 50
    return-void
.end method

.method public static disableDECOverride()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static forceMobileCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    sget-boolean v0, Lcom/jirbo/adcolony/a;->N:Z

    if-nez v0, :cond_0

    .line 494
    sput-boolean v1, Lcom/jirbo/adcolony/a;->N:Z

    .line 495
    sput-boolean v2, Lcom/jirbo/adcolony/a;->H:Z

    .line 496
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->d:Z

    .line 497
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->b:Z

    .line 498
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->c:Z

    .line 500
    :cond_0
    return-void
.end method

.method public static getCustomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static get_images(Ljava/lang/String;)V
    .locals 1
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 482
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/jirbo/adcolony/g;->i()Z

    move-result v0

    return v0
.end method

.method public static isZoneNative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 367
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 375
    :goto_1
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v2, v2, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 377
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v2, v2, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/n$d;->a(I)Lcom/jirbo/adcolony/n$a;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isZoneV4VC(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 358
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v1, :cond_0

    .line 360
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v1, :cond_0

    .line 361
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p0, v0}, Lcom/jirbo/adcolony/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "product_id"    # Ljava/lang/String;
    .param p1, "trans_id"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/jirbo/adcolony/AdColony;->notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 415
    return-void
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 5
    .param p0, "product_id"    # Ljava/lang/String;
    .param p1, "trans_id"    # Ljava/lang/String;
    .param p2, "currency_code"    # Ljava/lang/String;
    .param p3, "price"    # D

    .prologue
    .line 418
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "notifyIAPComplete() called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 420
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 421
    const-string v1, "product_id"

    invoke-virtual {v0, v1, p0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-wide/16 v2, 0x0

    cmpl-double v1, p3, v2

    if-eqz v1, :cond_0

    const-string v1, "price"

    invoke-virtual {v0, v1, p3, p4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 423
    :cond_0
    const-string v1, "trans_id"

    invoke-virtual {v0, v1, p1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "quantity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 425
    if-eqz p2, :cond_1

    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    sget-boolean v1, Lcom/jirbo/adcolony/a;->O:Z

    if-eqz v1, :cond_2

    .line 428
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "in_app_purchase"

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/a;->aj:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    instance-of v0, v0, Lcom/jirbo/adcolony/ab;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    instance-of v0, v0, Lcom/jirbo/adcolony/ac;

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 346
    :cond_1
    return-void
.end method

.method public static pause()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public static removeAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 409
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public static removeV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 395
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 249
    return-void
.end method

.method public static setCustomID(Ljava/lang/String;)V
    .locals 1
    .param p0, "new_custom_id"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    .line 195
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->h()V

    .line 198
    :cond_0
    return-void
.end method

.method public static setDeviceID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_device_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    .line 221
    sput-boolean v1, Lcom/jirbo/adcolony/a;->H:Z

    .line 222
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->d:Z

    .line 223
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->b:Z

    .line 224
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->c:Z

    .line 226
    :cond_0
    return-void
.end method

.method public static statusForZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 455
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    if-nez v0, :cond_1

    .line 458
    :cond_0
    const-string v0, "unknown"

    .line 473
    :goto_0
    return-object v0

    .line 460
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    goto :goto_0

    .line 462
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_5

    .line 466
    iget-boolean v1, v0, Lcom/jirbo/adcolony/n$ad;->g:Z

    if-nez v1, :cond_3

    const-string v0, "off"

    goto :goto_0

    .line 467
    :cond_3
    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$ad;->h:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jirbo/adcolony/b;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "active"

    goto :goto_0

    .line 468
    :cond_4
    const-string v0, "loading"

    goto :goto_0

    .line 471
    :cond_5
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-nez v0, :cond_6

    const-string v0, "unknown"

    goto :goto_0

    .line 473
    :cond_6
    const-string v0, "invalid"

    goto :goto_0
.end method
