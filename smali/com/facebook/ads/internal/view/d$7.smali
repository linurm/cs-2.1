.class Lcom/facebook/ads/internal/view/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$7;->a:Lcom/facebook/ads/internal/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$7;->a:Lcom/facebook/ads/internal/view/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d;->d(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d$a;->a(Lcom/facebook/ads/internal/view/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$7;->a:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$7;->a:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d;->d()V

    goto :goto_0
.end method
