.class public Lcom/heyzap/exchange/ResponseHandler$ServerErrorException;
.super Ljava/lang/Exception;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33c0ca5303cfb594L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
