.class Lcom/heyzap/common/mraid/MRAIDView$7;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView;->closeFromExpanded()V
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
    .line 863
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$7;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$7;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2300(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 867
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$7;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2400(Lcom/heyzap/common/mraid/MRAIDView;)Lcom/heyzap/common/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$7;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2400(Lcom/heyzap/common/mraid/MRAIDView;)Lcom/heyzap/common/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$7;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/heyzap/common/mraid/MRAIDViewListener;->mraidViewClose(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 870
    :cond_0
    return-void
.end method
