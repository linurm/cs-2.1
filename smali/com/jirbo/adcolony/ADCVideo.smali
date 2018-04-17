.class public abstract Lcom/jirbo/adcolony/ADCVideo;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCVideo$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:Z

.field static e:Z

.field static f:Z

.field static g:Z

.field static h:Z

.field static i:Z


# instance fields
.field A:D

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Z

.field E:Z

.field F:Z

.field G:Lcom/jirbo/adcolony/e;

.field H:Lcom/jirbo/adcolony/ad;

.field I:Lcom/jirbo/adcolony/AdColonyAd;

.field J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

.field K:Ljava/lang/String;

.field L:Z

.field M:Z

.field N:Ljava/lang/String;

.field O:Landroid/widget/VideoView;

.field P:Landroid/widget/FrameLayout;

.field Q:Landroid/widget/FrameLayout;

.field R:Landroid/widget/FrameLayout;

.field S:Landroid/graphics/Rect;

.field T:Lcom/jirbo/adcolony/ADCImage;

.field U:Lcom/jirbo/adcolony/ADCVideo$a;

.field V:Ljava/io/FileInputStream;

.field W:Landroid/telephony/PhoneStateListener;

.field X:Z

.field Y:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:D

.field q:D

.field r:J

.field s:J

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->B:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Z

    .line 90
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Z

    .line 101
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    .line 102
    const-string v0, "Your purchase will begin shortly!"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/graphics/Rect;

    .line 123
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->X:Z

    .line 124
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->Y:Z

    .line 823
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 129
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 130
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 131
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 132
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 781
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo;->B:Ljava/lang/String;

    .line 782
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 783
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    .line 785
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 790
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 791
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 793
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$3;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 809
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$4;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$4;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 817
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 818
    return-void
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 461
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 462
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 464
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 465
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 467
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    .line 469
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 472
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 474
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->x:I

    .line 475
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 477
    sget-boolean v3, Lcom/jirbo/adcolony/a;->m:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->x:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    if-ge v3, v4, :cond_0

    .line 479
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 480
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 481
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->x:I

    .line 482
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 485
    :cond_0
    sget-boolean v1, Lcom/jirbo/adcolony/a;->K:Z

    if-eqz v1, :cond_1

    .line 487
    sput-boolean v0, Lcom/jirbo/adcolony/a;->K:Z

    .line 488
    const/4 v0, 0x1

    .line 490
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    sput-boolean v2, Lcom/jirbo/adcolony/a;->ak:Z

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 331
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "haptics_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    .line 152
    const-string v0, "haptics_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    .line 153
    const-string v0, "in_progress"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-nez v0, :cond_4

    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Ljava/lang/String;

    .line 157
    const-string v0, "video_duration"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    iput-wide v6, p0, Lcom/jirbo/adcolony/ADCVideo;->A:D

    .line 205
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    .line 210
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->openHaptics(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    .line 222
    :cond_1
    const-string v0, "video_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/jirbo/adcolony/a;->aa:Z

    .line 223
    const-string v0, "end_card_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/jirbo/adcolony/a;->Z:Z

    .line 224
    const-string v0, "load_timeout_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->ab:Z

    .line 225
    const-string v0, "load_timeout"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/a;->ac:I

    move v3, v2

    .line 227
    :goto_5
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 229
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 232
    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_2
    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->f:Ljava/lang/String;

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 222
    goto :goto_3

    :cond_6
    move v0, v2

    .line 223
    goto :goto_4

    .line 237
    :cond_7
    const-string v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->AUTOMATIC:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->A:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->v:Z

    .line 241
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    const-string v3, "product_id"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    .line 244
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 247
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->requestWindowFeature(I)Z

    .line 250
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v5}, Landroid/view/Window;->setFlags(II)V

    .line 253
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-nez v0, :cond_a

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_9

    .line 259
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    .line 314
    :goto_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setVolumeControlStream(I)V

    .line 317
    new-instance v0, Lcom/jirbo/adcolony/e;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    .line 318
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 319
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    .line 320
    new-instance v0, Lcom/jirbo/adcolony/ad;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    .line 321
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    .line 322
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCVideo$a;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCVideo$a;

    .line 323
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v1, "browser_icon"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->T:Lcom/jirbo/adcolony/ADCImage;

    .line 326
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    .line 329
    sput-object p0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    .line 330
    sput-object p0, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    goto/16 :goto_0

    .line 264
    :cond_9
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 271
    :cond_a
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 272
    if-eqz v3, :cond_b

    if-eq v3, v4, :cond_b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_c

    :cond_b
    move v0, v4

    :goto_7
    sput v0, Lcom/jirbo/adcolony/a;->F:I

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 281
    sget v0, Lcom/jirbo/adcolony/a;->F:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 272
    :cond_c
    const/4 v0, 0x7

    goto :goto_7

    .line 286
    :cond_d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getRequestedOrientation()I

    .line 289
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 290
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 291
    packed-switch v0, :pswitch_data_0

    .line 303
    const/16 v1, 0x8

    .line 308
    :goto_8
    :pswitch_0
    sput v1, Lcom/jirbo/adcolony/a;->F:I

    .line 309
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto/16 :goto_6

    :pswitch_1
    move v1, v2

    .line 298
    goto :goto_8

    .line 300
    :pswitch_2
    const/16 v1, 0x9

    .line 301
    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_8

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 428
    sget-boolean v0, Lcom/jirbo/adcolony/a;->ak:Z

    if-nez v0, :cond_0

    .line 437
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/v;->H:Z

    .line 438
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 445
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->aa:Z

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    .line 448
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->x:Z

    .line 449
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->a()V

    .line 451
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 770
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 771
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 711
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1, p2}, Lcom/jirbo/adcolony/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 760
    :goto_0
    return v0

    .line 715
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 717
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_3

    .line 719
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 722
    sput-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 723
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 724
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 751
    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget v0, v0, Lcom/jirbo/adcolony/ad;->t:I

    if-nez v0, :cond_1

    .line 728
    sput-boolean v1, Lcom/jirbo/adcolony/a;->ak:Z

    .line 729
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->g()V

    goto :goto_1

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_5

    .line 736
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    iget-object v0, v0, Lcom/jirbo/adcolony/v;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCImage;

    .line 738
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCImage;->a()V

    goto :goto_2

    .line 740
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 741
    sput-boolean v3, Lcom/jirbo/adcolony/v;->H:Z

    .line 742
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 743
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Z

    goto :goto_1

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v0, :cond_1

    .line 747
    sput-boolean v1, Lcom/jirbo/adcolony/a;->ak:Z

    .line 748
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->h()V

    goto :goto_1

    .line 753
    :cond_6
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    move v0, v1

    .line 756
    goto :goto_0

    .line 760
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 652
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    .line 654
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_5

    .line 656
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->b:I

    .line 659
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 668
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_1

    .line 670
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 671
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 672
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    .line 674
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Y:Z

    if-nez v0, :cond_6

    .line 679
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 681
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Z

    .line 682
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v7}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 683
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->pause()I

    .line 691
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 694
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 695
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 696
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 697
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput v6, v0, Lcom/jirbo/adcolony/ad;->u:I

    .line 698
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput v6, v0, Lcom/jirbo/adcolony/ad;->t:I

    .line 699
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 702
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 703
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 704
    return-void

    .line 664
    :cond_5
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->b:I

    goto/16 :goto_0

    .line 687
    :cond_6
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->a:I

    goto :goto_1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 339
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "duration, actual_duration = "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->A:D

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/l;->a(D)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/l;->b(I)Lcom/jirbo/adcolony/l;

    .line 340
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->A:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->A:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 341
    :goto_0
    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 351
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 340
    goto :goto_0

    .line 348
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 349
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 359
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 361
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 362
    invoke-static {}, Lcom/jirbo/adcolony/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->b()Z

    .line 365
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Z

    if-eqz v0, :cond_6

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Z

    .line 370
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    const/16 v1, 0x14

    iput v1, v0, Lcom/jirbo/adcolony/ad;->m:I

    .line 375
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    const/16 v1, 0x19

    iput v1, v0, Lcom/jirbo/adcolony/ad;->m:I

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->x:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget v5, v5, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    :cond_6
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_a

    .line 385
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 396
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 397
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 402
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Ljava/io/FileInputStream;

    .line 403
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideo;->onWindowFocusChanged(Z)V

    .line 417
    :cond_8
    sget-boolean v0, Lcom/jirbo/adcolony/a;->aa:Z

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->a()V

    .line 420
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->d()V

    .line 422
    :cond_9
    :goto_1
    return-void

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 392
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to play video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video_filepath"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->e(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/ad;->c(Z)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "has_focus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    if-eqz p1, :cond_10

    .line 500
    sput-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    .line 501
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_c

    .line 503
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_8

    .line 507
    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    if-eqz v0, :cond_0

    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 508
    :cond_0
    sput v4, Lcom/jirbo/adcolony/ADCVideo;->c:I

    .line 509
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->a:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->seekTo(I)V

    .line 512
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_9

    .line 514
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 515
    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$1;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    .line 522
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 523
    :cond_2
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/v;->H:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Y:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_7

    .line 532
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 533
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 537
    :cond_4
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Z

    .line 539
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_b

    .line 542
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->play()I

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    .line 548
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-object v1, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 551
    :cond_6
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    .line 558
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_8

    .line 560
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->requestFocus()Z

    .line 561
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 595
    :cond_8
    :goto_3
    return-void

    .line 527
    :cond_9
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    goto :goto_0

    .line 548
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_b
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_7

    .line 555
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->resume()I

    goto :goto_2

    .line 565
    :cond_c
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_f

    .line 567
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    if-eqz v0, :cond_d

    .line 569
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 570
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_3

    .line 574
    :cond_d
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 575
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 578
    :cond_f
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_8

    .line 581
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto :goto_3

    .line 586
    :cond_10
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Y:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_12

    .line 588
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->pause()I

    .line 589
    :cond_11
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 590
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->pause()V

    .line 591
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Z

    .line 593
    :cond_12
    sput-boolean v5, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    goto :goto_3
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 3
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->ae:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 609
    const-string v2, "<script type=\"text/javascript\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v0, "</script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "OutOfMemoryError - disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 639
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 643
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto :goto_0

    .line 619
    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v2, "<script (type=\"text/javascript\")?((\\s)*src=\"mraid.js\"){1}></script>"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iput-object p1, v0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;

    .line 624
    :cond_4
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCVideo$2;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
