.class Lcom/heyzap/common/mraid/MRAIDView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView;->load()V
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
    .line 222
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$1;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method
