.class public Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x37e423444e3a177L


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;->a:I

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;->a:I

    return v0
.end method
