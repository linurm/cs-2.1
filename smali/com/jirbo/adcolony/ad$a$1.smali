.class Lcom/jirbo/adcolony/ad$a$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ad$a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ad$a;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ad$a;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->D:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Lcom/jirbo/adcolony/ad$a$1$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$a$1$1;-><init>(Lcom/jirbo/adcolony/ad$a$1;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1227
    :cond_0
    return-void
.end method
