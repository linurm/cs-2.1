.class public Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdAvailabilityEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/f;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;->a:Lcom/vungle/publisher/ad/AdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ad/AdManager;->b(Z)V

    .line 372
    return-void
.end method
