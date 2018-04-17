.class Lcom/jirbo/adcolony/ad$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ad$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ad$a$1;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ad$a$1;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$a$1$1;->a:Lcom/jirbo/adcolony/ad$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1$1;->a:Lcom/jirbo/adcolony/ad$a$1;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v1, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1$1;->a:Lcom/jirbo/adcolony/ad$a$1;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1$1;->a:Lcom/jirbo/adcolony/ad$a$1;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1224
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$a$1$1;->a:Lcom/jirbo/adcolony/ad$a$1;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a$1;->a:Lcom/jirbo/adcolony/ad$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad$a;->c:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    goto :goto_0
.end method
