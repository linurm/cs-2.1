.class public abstract Lcom/vungle/publisher/j;
.super Lcom/vungle/publisher/bx;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/i;


# instance fields
.field protected final b:Lcom/vungle/publisher/db/model/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/db/model/Ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/bx;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vungle/publisher/j;->b:Lcom/vungle/publisher/db/model/Ad;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/db/model/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/publisher/j;->b:Lcom/vungle/publisher/db/model/Ad;

    return-object v0
.end method
