.class public Lcom/jirbo/adcolony/AdColonyNativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyNativeAdView$b;,
        Lcom/jirbo/adcolony/AdColonyNativeAdView$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Ljava/lang/String;

.field M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

.field N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

.field O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

.field P:Lcom/jirbo/adcolony/ADCImage;

.field Q:Lcom/jirbo/adcolony/ADCImage;

.field R:Lcom/jirbo/adcolony/ADCImage;

.field S:Landroid/widget/ImageView;

.field T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

.field U:Landroid/view/View;

.field V:Landroid/graphics/Bitmap;

.field W:Lcom/jirbo/adcolony/ADCImage;

.field a:Landroid/widget/TextView;

.field aA:Lcom/jirbo/adcolony/n$ad;

.field aB:Lcom/jirbo/adcolony/n$a;

.field aC:F

.field aD:F

.field aE:F

.field aF:Z

.field aG:Z

.field aH:Z

.field aI:Landroid/widget/FrameLayout$LayoutParams;

.field aJ:Landroid/widget/FrameLayout$LayoutParams;

.field aK:Ljava/io/FileInputStream;

.field aa:Landroid/widget/ImageView;

.field ab:Z

.field ac:Landroid/widget/Button;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Landroid/media/MediaPlayer;

.field ah:Landroid/view/Surface;

.field ai:Ljava/lang/String;

.field aj:Ljava/lang/String;

.field ak:Ljava/lang/String;

.field al:Ljava/lang/String;

.field am:Ljava/lang/String;

.field an:Ljava/lang/String;

.field ao:Ljava/lang/String;

.field ap:Ljava/lang/String;

.field aq:Ljava/lang/String;

.field ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

.field as:I

.field at:I

.field au:I

.field av:I

.field aw:I

.field ax:I

.field ay:I

.field az:I

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/app/Activity;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/view/ViewGroup;

.field h:Landroid/graphics/SurfaceTexture;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 164
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Z)V

    .line 177
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "is_private"    # Z

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 181
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 183
    iput-boolean p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 187
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 188
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Z)V

    .line 306
    return-void
.end method

.method a(FZ)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 816
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    .line 818
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 823
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_3

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_3

    .line 827
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 828
    const-string v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 830
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 832
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 839
    const-string v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 841
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 842
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 843
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    goto/16 :goto_0

    .line 847
    :cond_4
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 849
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    goto/16 :goto_0
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 196
    return-void
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/jirbo/adcolony/a;->am:I

    .line 202
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->d:Landroid/app/Activity;

    .line 203
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    .line 205
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    .line 206
    if-eqz p4, :cond_0

    .line 208
    iput p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    .line 209
    iput p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 210
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->o:Z

    .line 213
    :cond_0
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 215
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    .line 222
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_5

    .line 226
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 228
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 229
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 237
    :goto_1
    if-ge v0, v1, :cond_6

    :goto_2
    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->az:I

    .line 239
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .line 241
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 244
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 246
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-nez v0, :cond_7

    .line 250
    :cond_3
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_4

    .line 252
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColonyNativeAdView created while no ads are available, returning blank view."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 253
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->g:I

    .line 254
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 256
    :cond_4
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    goto :goto_0

    .line 233
    :cond_5
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 234
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 237
    goto :goto_2

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    .line 260
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_8

    .line 264
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->c()Z

    .line 267
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 269
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/n$p;->i:Z

    .line 272
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_0
.end method

.method a(Z)V
    .locals 13

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0xe

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 309
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 310
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->q:Z

    .line 311
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setWillNotDraw(Z)V

    .line 313
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 315
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_14

    .line 317
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V

    .line 322
    :goto_0
    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->f:Ljava/lang/String;

    .line 323
    const-string v0, "advertiser_name"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ai:Ljava/lang/String;

    .line 324
    const-string v0, "description"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aj:Ljava/lang/String;

    .line 325
    const-string v0, "title"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ak:Ljava/lang/String;

    .line 326
    const-string v0, "poster_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->al:Ljava/lang/String;

    .line 327
    const-string v0, "unmute"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->am:Ljava/lang/String;

    .line 328
    const-string v0, "mute"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->an:Ljava/lang/String;

    .line 329
    const-string v0, "thumb_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    .line 330
    const-string v0, "native_engagement_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 331
    const-string v0, "native_engagement_label"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 332
    const-string v0, "native_engagement_command"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 333
    const-string v0, "native_engagement_type"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 334
    const-string v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    .line 335
    const-string v0, "click_to_install"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Z

    .line 336
    const-string v0, "store_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Ljava/lang/String;

    .line 338
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 340
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->AUTOMATIC:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 341
    :cond_1
    const-string v0, "product_id"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->b:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    if-nez v0, :cond_7

    .line 347
    :cond_3
    const/16 v0, 0xd

    sput v0, Lcom/jirbo/adcolony/a;->am:I

    .line 562
    :cond_4
    :goto_2
    return-void

    .line 318
    :cond_5
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    goto/16 :goto_0

    .line 343
    :cond_6
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    goto :goto_1

    .line 350
    :cond_7
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Z

    .line 351
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_4

    .line 356
    :cond_8
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_c

    .line 359
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget v0, v0, Lcom/jirbo/adcolony/n$ac;->b:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    .line 360
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget v0, v0, Lcom/jirbo/adcolony/n$ac;->c:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    .line 362
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 364
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 366
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v2, v2

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 367
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    .line 370
    :cond_9
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 372
    :cond_a
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 373
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 374
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 376
    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 379
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    .line 380
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    .line 389
    :goto_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    if-eqz v0, :cond_16

    .line 394
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 413
    :cond_b
    :goto_4
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->al:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    .line 414
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, v10, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    .line 417
    :goto_5
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 419
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 422
    :cond_c
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_d

    .line 424
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 428
    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    .line 429
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 431
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v4, v1

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->az:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 432
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 433
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 434
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 435
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    :cond_d
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->am:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    .line 488
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->an:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    .line 489
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    .line 490
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    div-double/2addr v4, v6

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    float-to-double v6, v1

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    div-float v1, v10, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 491
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 492
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 494
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 499
    new-instance v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    .line 500
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    .line 501
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    .line 502
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    :goto_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 507
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 508
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 531
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    :cond_e
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_10

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 536
    new-instance v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    .line 542
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_11

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_12

    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 545
    :cond_12
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    if-eqz v1, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_13

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    :cond_13
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_4

    .line 551
    if-eqz p1, :cond_1b

    .line 553
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 560
    :goto_7
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 353
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_8

    goto/16 :goto_2

    .line 385
    :cond_15
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    .line 386
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    goto/16 :goto_3

    .line 397
    :cond_16
    if-nez p1, :cond_17

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 400
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 402
    :cond_17
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    if-eqz v0, :cond_18

    .line 404
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 405
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 407
    :cond_18
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    if-eqz v0, :cond_b

    .line 409
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 410
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 414
    :cond_19
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    goto/16 :goto_5

    .line 505
    :cond_1a
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 557
    :cond_1b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/16 :goto_7
.end method

.method a(ZZ)V
    .locals 4

    .prologue
    .line 633
    if-eqz p1, :cond_1

    .line 635
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 638
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 644
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 646
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 648
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 655
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 652
    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 2

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 868
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 864
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 865
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 866
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    .line 867
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 574
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-nez v0, :cond_0

    .line 877
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 878
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 880
    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 793
    if-eqz p1, :cond_1

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 796
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 797
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 802
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 803
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public canceled()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->I:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 671
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Destroy called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 672
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ah:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ah:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 674
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 675
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$p;->i:Z

    .line 676
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 677
    return-void
.end method

.method public getAdvertiserImage()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 684
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    .line 687
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 692
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 694
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    .line 695
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public getEngagementCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngagementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNativeAdHeight()I
    .locals 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    goto :goto_0
.end method

.method public getNativeAdWidth()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public iapEnabled()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    return v0
.end method

.method public iapEngagementType()Lcom/jirbo/adcolony/AdColonyIAPEngagement;
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->A:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    sget-object v1, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->END_CARD:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->END_CARD:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 729
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    goto :goto_0
.end method

.method public iapProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public isEngagementEnabled()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->F:Z

    if-nez v1, :cond_1

    .line 570
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAddedToListView()V
    .locals 4

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->m:Z

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->m:Z

    .line 1111
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->h:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->i:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aK:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v5, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    .line 929
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 930
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 931
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 932
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v4, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 933
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 934
    const-string v1, "ad_slot"

    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v2, v2, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 935
    const-string v1, "replay"

    invoke-virtual {v0, v1, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 936
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 937
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 939
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v0, v4, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 940
    :cond_1
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    .line 941
    return-void

    .line 919
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 969
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 971
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    .line 972
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    iput v4, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 974
    :cond_4
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 975
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    move v0, v1

    .line 977
    :goto_1
    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_6

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    .line 978
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_9

    .line 980
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-nez v0, :cond_7

    .line 982
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Scroll Pause"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 983
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 984
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 985
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1020
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 975
    goto :goto_1

    .line 988
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 990
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-nez v0, :cond_a

    .line 992
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_2

    .line 996
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 997
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 998
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 1001
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->H:Z

    if-nez v0, :cond_7

    .line 1003
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->H:Z

    .line 1004
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    const-string v2, "native_start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"ad_slot\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v4, v4, Lcom/jirbo/adcolony/u;->j:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"replay\":false}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1005
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 1006
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->q:Z

    .line 1007
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 1008
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    if-nez v0, :cond_b

    .line 1010
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    new-instance v1, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    .line 1012
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    goto/16 :goto_2

    .line 1016
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->a:Z

    if-nez v0, :cond_7

    .line 1018
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto/16 :goto_2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 948
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 951
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 953
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v3, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 954
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 887
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad onPrepared called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 888
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 890
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 896
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v3, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->c(Z)V

    goto :goto_0

    .line 906
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1032
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1100
    :goto_0
    return v0

    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1035
    if-ne v2, v1, :cond_4

    sget-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1037
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Z

    if-nez v2, :cond_6

    .line 1039
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    sput-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 1040
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Lcom/jirbo/adcolony/n$a;)V

    .line 1041
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 1046
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    iput-boolean v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->u:Z

    .line 1049
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v1, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->t:Z

    .line 1050
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "native"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 1051
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "fullscreen"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 1052
    sput-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    .line 1053
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1054
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 1055
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_5

    .line 1057
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Launching AdColonyOverlay"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1058
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1060
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1071
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v2, -0x1

    iput v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->f:I

    .line 1075
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v0, Lcom/jirbo/adcolony/af;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/af;->d:I

    .line 1077
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 1079
    :cond_3
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1080
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    :cond_4
    :goto_2
    move v0, v1

    .line 1100
    goto/16 :goto_0

    .line 1065
    :cond_5
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1066
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1068
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1085
    :cond_6
    new-instance v2, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 1086
    const-string v3, "click_type"

    const-string v4, "video_click"

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v3, v3, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v4, "click"

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v3, v4, v2, v5}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1090
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1091
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1093
    :catch_0
    move-exception v2

    .line 1095
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to open store."

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 755
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 756
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 758
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    .line 760
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 761
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    :cond_0
    return-void
.end method

.method public prepareForListView()V
    .locals 1

    .prologue
    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    .line 1116
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 774
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 775
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 777
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 778
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    .line 779
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 780
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 781
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 784
    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(ZZ)V

    .line 662
    return-void
.end method

.method public setOverlayButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 593
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 594
    return-void
.end method

.method public setOverlayButtonTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 602
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 603
    return-void
.end method

.method public setOverlayButtonTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 607
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 855
    return-void
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyNativeAdListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 1
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 739
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 740
    return-object p0
.end method

.method public withMutedListener(Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 0
    .param p1, "mute_listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .line 745
    return-object p0
.end method
