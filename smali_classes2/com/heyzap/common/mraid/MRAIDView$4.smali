.class Lcom/heyzap/common/mraid/MRAIDView$4;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$400(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1100(Lcom/heyzap/common/mraid/MRAIDView;)V

    goto :goto_0

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$4;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1200(Lcom/heyzap/common/mraid/MRAIDView;)V

    goto :goto_0
.end method
