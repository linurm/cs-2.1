.class Lcom/jirbo/adcolony/ad;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ad$c;,
        Lcom/jirbo/adcolony/ad$b;,
        Lcom/jirbo/adcolony/ad$a;
    }
.end annotation


# static fields
.field static aD:[F


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

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Z

.field S:Z

.field T:Z

.field U:Z

.field V:Z

.field W:Z

.field a:Landroid/webkit/WebView;

.field aA:[Lcom/jirbo/adcolony/ADCImage;

.field aB:Lcom/jirbo/adcolony/m;

.field aC:[Ljava/lang/String;

.field aE:F

.field aF:F

.field aG:F

.field aH:F

.field aI:F

.field aJ:F

.field aK:F

.field aL:Landroid/graphics/Paint;

.field aM:Landroid/graphics/RectF;

.field aN:Lcom/jirbo/adcolony/ad$c;

.field aO:Landroid/os/Handler;

.field aa:Z

.field ab:Landroid/graphics/Canvas;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Ljava/lang/String;

.field ah:Lcom/jirbo/adcolony/ADCDownload;

.field ai:Lcom/jirbo/adcolony/aa$b;

.field aj:Landroid/graphics/Paint;

.field ak:Landroid/graphics/Paint;

.field al:Landroid/graphics/Paint;

.field am:Landroid/graphics/Paint;

.field an:Landroid/graphics/Rect;

.field ao:Lcom/jirbo/adcolony/ADCImage;

.field ap:Lcom/jirbo/adcolony/ADCImage;

.field aq:Lcom/jirbo/adcolony/ADCImage;

.field ar:Lcom/jirbo/adcolony/ADCImage;

.field as:Lcom/jirbo/adcolony/ADCImage;

.field at:Lcom/jirbo/adcolony/ADCImage;

.field au:Lcom/jirbo/adcolony/ADCImage;

.field av:Lcom/jirbo/adcolony/ADCImage;

.field aw:Lcom/jirbo/adcolony/ADCImage;

.field ax:Lcom/jirbo/adcolony/ADCImage;

.field ay:Lcom/jirbo/adcolony/ADCImage;

.field az:[Lcom/jirbo/adcolony/ADCImage;

.field b:Landroid/webkit/WebView;

.field c:Landroid/view/View;

.field d:Lcom/jirbo/adcolony/ADCVideo;

.field e:D

.field f:D

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:J

.field w:J

.field x:F

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/ad;->aD:[F

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    iput-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 42
    iput-wide v8, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 44
    const/16 v0, 0x63

    iput v0, p0, Lcom/jirbo/adcolony/ad;->g:I

    .line 45
    iput v2, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 65
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 66
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->z:Z

    .line 67
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 68
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->B:Z

    .line 69
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->C:Z

    .line 70
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->D:Z

    .line 96
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ac:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->an:Landroid/graphics/Rect;

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/graphics/RectF;

    .line 624
    new-instance v0, Lcom/jirbo/adcolony/ad$c;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$c;-><init>(Lcom/jirbo/adcolony/ad;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aN:Lcom/jirbo/adcolony/ad$c;

    .line 626
    new-instance v0, Lcom/jirbo/adcolony/ad$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$3;-><init>(Lcom/jirbo/adcolony/ad;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/c;->t:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    .line 145
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_0

    .line 147
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/n$g;->a:Z

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    .line 148
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-wide v4, v3, Lcom/jirbo/adcolony/AdColonyAd;->q:D

    iput-wide v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jirbo/adcolony/ad;->x:F

    .line 153
    sget-boolean v0, Lcom/jirbo/adcolony/a;->Y:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    .line 155
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 157
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    if-ltz v0, :cond_11

    sget-object v3, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "DEC URL = "

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v3, p1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 165
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$h;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-nez v0, :cond_12

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    .line 168
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_13

    .line 171
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "end_card_filepath"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    .line 172
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    .line 173
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->g:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    .line 176
    iget v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    if-nez v0, :cond_3

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    .line 177
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    if-nez v0, :cond_4

    const/16 v0, 0x140

    iput v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "info_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 181
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "download_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 182
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "replay_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v6

    .line 183
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "continue_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v7

    .line 186
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "info_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v2

    .line 187
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "download_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v1

    .line 188
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "replay_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v6

    .line 189
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "continue_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v7

    .line 191
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    const-string v3, "Info"

    aput-object v3, v0, v2

    .line 192
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    const-string v3, "Download"

    aput-object v3, v0, v1

    .line 193
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    const-string v3, "Replay"

    aput-object v3, v0, v6

    .line 194
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    const-string v3, "Continue"

    aput-object v3, v0, v7

    .line 213
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_6

    .line 216
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    .line 217
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    .line 218
    const-string v0, "skip_delay"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jirbo/adcolony/ad;->p:I

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    .line 224
    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    const/high16 v0, 0x40c00000    # 6.0f

    .line 225
    :cond_7
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 231
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 232
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 233
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_9

    .line 235
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$g;->a:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 236
    const-string v0, "image_overlay_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 238
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_e

    .line 241
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    .line 242
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    .line 243
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    .line 244
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ae:Ljava/lang/String;

    .line 246
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v0, v0, Lcom/jirbo/adcolony/n$g;->c:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    .line 247
    const-string v0, "engagement_delay"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jirbo/adcolony/ad;->q:I

    .line 248
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Learn More"

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ae:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->G:Z

    .line 251
    :cond_b
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-eqz v0, :cond_c

    .line 253
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->b:Landroid/webkit/WebView;

    .line 254
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 257
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    if-nez v0, :cond_e

    :cond_d
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 259
    :cond_e
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-eqz v0, :cond_f

    .line 261
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v1, "image_overlay_filepath"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    .line 262
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v8

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 264
    :goto_3
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 267
    :cond_f
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->f()V

    .line 270
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 276
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 283
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_4
    return-void

    .line 158
    :cond_11
    const-string v0, ""

    goto/16 :goto_0

    :cond_12
    move v0, v2

    .line 165
    goto/16 :goto_1

    .line 196
    :cond_13
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_5

    .line 199
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    .line 200
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    .line 203
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    .line 204
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    .line 207
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "browser_icon"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:Lcom/jirbo/adcolony/ADCImage;

    .line 209
    new-instance v0, Lcom/jirbo/adcolony/ad$b;

    invoke-direct {v0, p0, p1}, Lcom/jirbo/adcolony/ad$b;-><init>(Lcom/jirbo/adcolony/ad;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->c:Landroid/view/View;

    .line 210
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->b()V

    goto/16 :goto_2

    .line 262
    :cond_14
    iget v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->x:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto/16 :goto_3

    .line 285
    :catch_0
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 846
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 847
    :cond_1
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 848
    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 849
    :cond_3
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_4

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 850
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->g:I

    if-gt p2, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0
.end method

.method public a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/high16 v12, 0x4084000000000000L    # 640.0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 873
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->b()Z

    move-result v6

    .line 874
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 876
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_1

    .line 878
    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    .line 880
    :cond_0
    if-eqz v6, :cond_1

    .line 882
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v7, v7, Lcom/jirbo/adcolony/ADCVideo;->u:I

    const/16 v8, 0x11

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v7, v7, Lcom/jirbo/adcolony/ADCVideo;->x:I

    iget-object v8, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v8, v8, Lcom/jirbo/adcolony/ADCVideo;->y:I

    const/16 v9, 0x11

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 888
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    if-eqz v0, :cond_8

    .line 890
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 893
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 894
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v7, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v7

    .line 895
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    .line 896
    mul-float/2addr v1, v1

    mul-float/2addr v7, v7

    add-float/2addr v1, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 897
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, v7

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 898
    div-double/2addr v0, v8

    .line 900
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double v8, v0, v8

    cmpg-double v7, v8, v2

    if-gez v7, :cond_9

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 901
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 904
    :cond_2
    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v10

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    const/high16 v0, 0x41900000    # 18.0f

    .line 905
    :goto_1
    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v10

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_b

    const/high16 v1, 0x41900000    # 18.0f

    .line 906
    :goto_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->am:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 908
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 911
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_3

    .line 913
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(II)V

    .line 914
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(II)V

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 920
    :goto_3
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->z:Z

    .line 922
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_5

    .line 924
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v6, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v3, v6

    const/16 v6, 0x11

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    cmpg-double v0, v0, v4

    if-gez v0, :cond_d

    move-wide v0, v4

    :goto_4
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 926
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_5

    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 928
    :cond_5
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_6

    .line 931
    iget v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    iget v1, p0, Lcom/jirbo/adcolony/ad;->o:I

    div-int/2addr v0, v1

    int-to-double v2, v0

    .line 932
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 933
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v6, v6, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v6, v6

    div-double/2addr v6, v4

    cmpl-double v0, v0, v6

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 936
    :goto_5
    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, v6, Lcom/jirbo/adcolony/ADCVideo;->x:I

    .line 937
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v2, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 940
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    :goto_6
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 943
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v2, v2

    iget v4, p0, Lcom/jirbo/adcolony/ad;->o:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->o:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 945
    :goto_7
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 946
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->d(II)V

    .line 950
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_7

    .line 952
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 956
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 957
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 958
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->f:I

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/ADCImage;->b(II)V

    .line 959
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    invoke-virtual {v0, v2, v1}, Lcom/jirbo/adcolony/ADCImage;->b(II)V

    .line 965
    :cond_7
    :goto_8
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_8

    .line 967
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 968
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 973
    :cond_8
    return-void

    .line 900
    :cond_9
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double/2addr v0, v8

    goto/16 :goto_0

    .line 904
    :cond_a
    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1

    .line 905
    :cond_b
    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v10

    double-to-float v1, v2

    goto/16 :goto_2

    .line 918
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    goto/16 :goto_3

    .line 925
    :cond_d
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    goto/16 :goto_4

    .line 933
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    goto/16 :goto_5

    .line 940
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x408e000000000000L    # 960.0

    div-double/2addr v0, v2

    goto/16 :goto_6

    .line 943
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto/16 :goto_7

    .line 961
    :cond_11
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->L:Z

    goto :goto_8
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 534
    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 536
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    .line 537
    packed-switch p1, :pswitch_data_0

    .line 602
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 606
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 607
    new-instance v1, Lcom/jirbo/adcolony/ad$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$1;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 614
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    :cond_1
    :goto_1
    return-void

    .line 541
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 542
    const-string v0, "info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v2, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 543
    const-string v0, "info_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    sget-object v1, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "INFO "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 546
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    goto :goto_1

    .line 552
    :cond_3
    :try_start_1
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v3, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 560
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 561
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v2, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 562
    const-string v0, "download_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    sget-object v1, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "DOWNLOAD "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 565
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 571
    :cond_5
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v3, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 580
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->i()V

    .line 581
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 588
    :pswitch_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 589
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 590
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->g()V

    goto/16 :goto_0

    .line 596
    :pswitch_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 597
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->h()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1408
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1417
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1419
    :cond_0
    if-eqz p1, :cond_1

    .line 1421
    const-string v0, "adc_bridge.fireChangeEvent({viewable:true});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1425
    :cond_1
    const-string v0, "adc_bridge.fireChangeEvent({viewable:false});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/jirbo/adcolony/ADCImage;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 862
    if-nez p1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    iget v2, p1, Lcom/jirbo/adcolony/ADCImage;->f:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v1

    iget v2, p1, Lcom/jirbo/adcolony/ADCImage;->g:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    if-ge p3, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    sget-object v1, Lcom/jirbo/adcolony/ad;->aD:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1638
    const/4 v1, 0x0

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1640
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ad;->aD:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    float-to-int v0, v1

    return v0
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 982
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    .line 983
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 984
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 985
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 988
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 989
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 991
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 992
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 993
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 998
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/jirbo/adcolony/ad$4;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$4;-><init>(Lcom/jirbo/adcolony/ad;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1023
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    .line 1026
    const-string v0, "hardware_acceleration_disabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :cond_0
    :goto_0
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1, v2, v3}, Lcom/jirbo/adcolony/m;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aB:Lcom/jirbo/adcolony/m;

    .line 1043
    new-instance v2, Lcom/jirbo/adcolony/ad$a;

    invoke-direct {v2, p0, v5}, Lcom/jirbo/adcolony/ad$a;-><init>(Lcom/jirbo/adcolony/ad;Lcom/jirbo/adcolony/ad$1;)V

    .line 1044
    new-instance v1, Lcom/jirbo/adcolony/ad$5;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$5;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1069
    new-instance v0, Lcom/jirbo/adcolony/ad$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$6;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1106
    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1108
    return-void

    .line 1106
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 1033
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 1691
    iput p1, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 1692
    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 1693
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_0

    .line 1448
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1269
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :goto_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "true"

    .line 1289
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var is_tablet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1291
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_4

    const-string v0, "tablet"

    .line 1294
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.adc_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.os_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1296
    const-string v1, "adc_bridge.os_name=\'android\'"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.device_type=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1298
    const-string v0, "adc_bridge.fireChangeEvent({state:\'default\'});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1299
    const-string v0, "adc_bridge.fireReadyEvent()"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1288
    :cond_3
    const-string v0, "false"

    goto/16 :goto_2

    .line 1291
    :cond_4
    const-string v0, "phone"

    goto/16 :goto_3
.end method

.method c(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1548
    sput-boolean v2, Lcom/jirbo/adcolony/a;->M:Z

    .line 1550
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 1553
    new-instance v1, Lcom/jirbo/adcolony/v;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v1, v2, v0}, Lcom/jirbo/adcolony/v;-><init>(Lcom/jirbo/adcolony/ADCVideo;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v1, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 1568
    :goto_0
    iput-object v3, p0, Lcom/jirbo/adcolony/ad;->aN:Lcom/jirbo/adcolony/ad$c;

    .line 1569
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1559
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 1557
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1561
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1562
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1563
    sput-boolean v2, Lcom/jirbo/adcolony/a;->ak:Z

    .line 1564
    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    .line 1565
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    .line 1566
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-object v3, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 1319
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/d;->a(ZLcom/jirbo/adcolony/AdColonyAd;)V

    .line 1322
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->D:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->ab:Z

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1326
    new-instance v1, Lcom/jirbo/adcolony/ad$7;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$7;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1340
    sget v2, Lcom/jirbo/adcolony/a;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/jirbo/adcolony/a;->Z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->g()V

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_2

    .line 1348
    const-string v0, "card_shown"

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1351
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aN:Lcom/jirbo/adcolony/ad$c;

    if-eqz v0, :cond_4

    .line 1353
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aN:Lcom/jirbo/adcolony/ad$c;

    monitor-enter v1

    .line 1355
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    .line 1356
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$h;->e:Z

    if-eqz v0, :cond_3

    .line 1358
    new-instance v0, Lcom/jirbo/adcolony/aa$b;

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-wide v2, v2, Lcom/jirbo/adcolony/n$h;->g:D

    invoke-direct {v0, v2, v3}, Lcom/jirbo/adcolony/aa$b;-><init>(D)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    .line 1360
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :cond_4
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_6

    .line 1366
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1367
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1368
    new-instance v2, Lcom/jirbo/adcolony/ad$8;

    invoke-direct {v2, p0, v1}, Lcom/jirbo/adcolony/ad$8;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    .line 1382
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1383
    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1384
    :cond_5
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1385
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1387
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    .line 1388
    :cond_7
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->f()V

    .line 1389
    return-void

    .line 1360
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1395
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Loading - end card url = "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    sget-object v1, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1396
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 1467
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1468
    new-instance v1, Lcom/jirbo/adcolony/ad$9;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$9;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1476
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1478
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->stop()I

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 1482
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 1483
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 1484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 1485
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 1486
    return-void
.end method

.method g()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1493
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    sput-boolean v9, Lcom/jirbo/adcolony/a;->M:Z

    .line 1498
    iput-boolean v9, p0, Lcom/jirbo/adcolony/ad;->aa:Z

    .line 1500
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    .line 1501
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v4, v1, Lcom/jirbo/adcolony/ADCVideo;->s:J

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v6, v1, Lcom/jirbo/adcolony/ADCVideo;->r:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    .line 1502
    sput-boolean v9, Lcom/jirbo/adcolony/a;->ak:Z

    .line 1504
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1506
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 1504
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1510
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->V:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1518
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1520
    iput-object v8, p0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    .line 1521
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_4

    .line 1523
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1524
    iput-object v8, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    .line 1525
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aB:Lcom/jirbo/adcolony/m;

    iput-object v8, v0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    .line 1526
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aB:Lcom/jirbo/adcolony/m;

    iput-object v8, v0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    .line 1527
    iput-object v8, p0, Lcom/jirbo/adcolony/ad;->c:Landroid/view/View;

    .line 1529
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1530
    sput-boolean v9, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    .line 1531
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-object v8, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    .line 1532
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-object v8, v0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCVideo$a;

    .line 1533
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-object v8, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    .line 1534
    iput-object v8, p0, Lcom/jirbo/adcolony/ad;->aN:Lcom/jirbo/adcolony/ad$c;

    .line 1535
    iput-object v8, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    .line 1536
    sput-boolean v9, Lcom/jirbo/adcolony/a;->E:Z

    goto/16 :goto_0

    .line 1512
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method h()V
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 1545
    return-void
.end method

.method i()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1576
    const-string v0, "replay"

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1577
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 1578
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 1579
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput v6, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 1580
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    .line 1581
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 1582
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 1586
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1587
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1588
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCVideo;->u:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1590
    new-instance v2, Lcom/jirbo/adcolony/ad$10;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ad$10;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    .line 1605
    const-wide/16 v4, 0x384

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1607
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 1608
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_1

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    .line 1613
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->openHaptics(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->play()I

    .line 1622
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1623
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->requestFocus()Z

    .line 1624
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 1625
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/e;->setVisibility(I)V

    .line 1626
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ad;->a(Z)V

    .line 1627
    return-void

    .line 1615
    :catch_0
    move-exception v0

    .line 1617
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    goto :goto_0
.end method

.method j()V
    .locals 2

    .prologue
    .line 1651
    .line 1652
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jirbo/adcolony/ad$2;

    invoke-direct {v1, p0, p0}, Lcom/jirbo/adcolony/ad$2;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1661
    return-void
.end method

.method k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1670
    iget v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->E:Z

    if-nez v0, :cond_1

    .line 1673
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->E:Z

    .line 1674
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ad;->b(Z)V

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->E:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    if-nez v0, :cond_0

    .line 1679
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->E:Z

    .line 1680
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ad;->b(Z)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->W:Z

    .line 1309
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->d()V

    .line 1310
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->F:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->a()V

    .line 298
    iput-object p1, p0, Lcom/jirbo/adcolony/ad;->ab:Landroid/graphics/Canvas;

    .line 301
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/jirbo/adcolony/ad;->p:I

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    .line 328
    :cond_3
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/jirbo/adcolony/ad;->q:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    .line 331
    :cond_4
    const/high16 v2, 0x431d0000    # 157.0f

    .line 336
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 340
    const-wide v0, 0x4067400000000000L    # 186.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 341
    const-wide v4, 0x407d600000000000L    # 470.0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v3

    add-int/2addr v3, v0

    .line 343
    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 346
    iget v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    add-int/lit8 v5, v0, 0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_9

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_9

    iget v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-eqz v4, :cond_9

    .line 348
    :cond_5
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 349
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aA:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 350
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 362
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 364
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aC:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jirbo/adcolony/ADCImage;->f:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v6, v6, v0

    .line 365
    invoke-virtual {v6}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jirbo/adcolony/ADCImage;->g:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    .line 364
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-le v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 309
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 310
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput v0, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 311
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput v1, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    goto/16 :goto_1

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-ge v0, v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 320
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 321
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput v0, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 322
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput v1, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    goto/16 :goto_1

    .line 327
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 328
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 354
    :cond_9
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_a

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-eq v4, v5, :cond_6

    .line 356
    :cond_a
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 357
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->az:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 358
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    goto/16 :goto_5

    .line 372
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_e

    .line 375
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 376
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 377
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 378
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 380
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/ad;->i:I

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->j:I

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->k:I

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->l:I

    .line 386
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->H:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 390
    :goto_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->I:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 394
    :goto_7
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->j()V

    goto/16 :goto_0

    .line 387
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_6

    .line 391
    :cond_d
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_7

    .line 402
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_15

    .line 404
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 405
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->update(J)I

    .line 409
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    .line 410
    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    sub-int/2addr v0, v1

    .line 411
    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    .line 412
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ad;->S:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    const/4 v0, 0x0

    move v6, v0

    .line 413
    :goto_8
    if-nez v6, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 415
    :cond_10
    const/16 v0, 0x1f4

    if-lt v1, v0, :cond_14

    .line 418
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->B:Z

    if-eqz v0, :cond_11

    .line 420
    const-wide v2, 0x4076800000000000L    # 360.0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aF:F

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->B:Z

    .line 424
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 425
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const-string v3, "0123456789"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 426
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aI:F

    .line 430
    :cond_11
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aG:F

    .line 431
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aH:F

    .line 434
    iget v0, p0, Lcom/jirbo/adcolony/ad;->aI:F

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aJ:F

    .line 435
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aI:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/jirbo/adcolony/ad;->m:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aK:F

    .line 436
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aJ:F

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aK:F

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/jirbo/adcolony/ad;->aI:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jirbo/adcolony/ad;->aJ:F

    const/high16 v5, 0x40000000    # 2.0f

    iget v7, p0, Lcom/jirbo/adcolony/ad;->aI:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jirbo/adcolony/ad;->aK:F

    iget v7, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 440
    iget v0, p0, Lcom/jirbo/adcolony/ad;->aF:F

    float-to-double v2, v0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    int-to-double v0, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aE:F

    .line 441
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aE:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->aL:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 444
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_12

    .line 446
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 448
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 449
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/graphics/RectF;

    .line 451
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    .line 450
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    :cond_12
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v0, :cond_13

    .line 460
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_16

    .line 462
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 471
    :cond_13
    :goto_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v0, :cond_14

    .line 473
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-nez v0, :cond_18

    .line 475
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->J:Z

    if-eqz v0, :cond_17

    .line 477
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 478
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    .line 487
    :goto_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 488
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->e:Landroid/graphics/Rect;

    .line 489
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Paint;

    .line 488
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 502
    :cond_14
    :goto_b
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_15

    .line 504
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/v;->onDraw(Landroid/graphics/Canvas;)V

    .line 507
    :cond_15
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 466
    :cond_16
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_9

    .line 482
    :cond_17
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 483
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 491
    :cond_18
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-eqz v0, :cond_14

    .line 493
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 494
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    :cond_19
    move v6, v0

    goto/16 :goto_8

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    .line 1455
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 1456
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 521
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 522
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 523
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x28

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 524
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const-wide/16 v10, 0xfa

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 653
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/v;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 834
    :goto_0
    return v0

    .line 660
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 666
    if-nez v4, :cond_7

    .line 669
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v4, :cond_3

    .line 672
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 675
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 676
    goto :goto_0

    .line 680
    :cond_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 683
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 684
    goto :goto_0

    :cond_2
    move v0, v3

    .line 688
    goto :goto_0

    .line 692
    :cond_3
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v4, :cond_4

    .line 694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 697
    iget v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    if-nez v4, :cond_4

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_4

    const/16 v4, 0x131

    if-ge v0, v4, :cond_4

    .line 699
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/ad;->a(II)I

    move-result v4

    .line 700
    iput v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 701
    iput v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 702
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 703
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 708
    :cond_4
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 710
    const/16 v0, 0xa

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 711
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 712
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 713
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 714
    goto/16 :goto_0

    .line 718
    :cond_5
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v3, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v3, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 720
    :cond_6
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 721
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 722
    goto/16 :goto_0

    .line 729
    :cond_7
    if-ne v4, v2, :cond_13

    .line 732
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v4, :cond_b

    .line 735
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->H:Z

    if-eqz v4, :cond_9

    .line 737
    const/4 v0, 0x4

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 738
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 739
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 740
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 739
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 741
    goto/16 :goto_0

    .line 745
    :cond_9
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->I:Z

    if-eqz v4, :cond_b

    .line 747
    iput v5, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 748
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 749
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 750
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 749
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 751
    goto/16 :goto_0

    .line 756
    :cond_b
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v4, :cond_c

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 760
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_c

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_c

    const/16 v4, 0x131

    if-ge v0, v4, :cond_c

    .line 762
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/ad;->a(II)I

    move-result v4

    .line 763
    if-lez v4, :cond_c

    iget v5, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-ne v4, v5, :cond_c

    .line 765
    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    .line 766
    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 765
    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    :cond_c
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 774
    const/16 v0, 0xa

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 775
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 776
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 777
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aO:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 778
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 777
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 779
    goto/16 :goto_0

    .line 783
    :cond_d
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ay:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 785
    :cond_e
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 788
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 790
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    .line 806
    :goto_1
    const-string v0, "in_video_engagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v3, v3, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v3}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    move v0, v2

    .line 807
    goto/16 :goto_0

    .line 792
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$aa;->c:Z

    if-eqz v0, :cond_11

    .line 794
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ag:Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v1, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->OVERLAY:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->A:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 796
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 797
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->U:Z

    .line 798
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 799
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->h()V

    goto :goto_1

    .line 803
    :cond_11
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 804
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v4, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 811
    :cond_12
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 812
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 813
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 814
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 815
    iput v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 816
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 817
    goto/16 :goto_0

    .line 823
    :cond_13
    if-ne v4, v5, :cond_14

    .line 826
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 827
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 828
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 829
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 830
    iput v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 831
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 832
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 834
    goto/16 :goto_0
.end method
