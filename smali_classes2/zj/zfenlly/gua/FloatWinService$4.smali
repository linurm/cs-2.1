.class Lzj/zfenlly/gua/FloatWinService$4;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzj/zfenlly/gua/FloatWinService;


# direct methods
.method constructor <init>(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 384
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v0, v0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$4;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$1000(Lzj/zfenlly/gua/FloatWinService;)V

    return-void
.end method
