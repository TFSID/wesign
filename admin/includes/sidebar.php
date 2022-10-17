<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <a href="#" class="nav-link">
        <div class="profile-image">
          <img class="img-xs rounded-circle" src="images/faces/face8.jpg" alt="profile image">
          <div class="dot-indicator bg-success"></div>
        </div>
        <div class="text-wrapper">
          <?php
          $aid = $_SESSION['sturecmsaid'];
          $sql = "SELECT * from tbladmin where ID=:aid";

          $query = $dbh->prepare($sql);
          $query->bindParam(':aid', $aid, PDO::PARAM_STR);
          $query->execute();
          $results = $query->fetchAll(PDO::FETCH_OBJ);

          $cnt = 1;
          if ($query->rowCount() > 0) {
            foreach ($results as $row) {               ?>
              <p class="profile-name"><?php echo htmlentities($row->AdminName); ?></p>
              <p class="designation"><?php echo htmlentities($row->Email); ?></p><?php $cnt = $cnt + 1;
                                                                                }
                                                                              } ?>
        </div>

      </a>
    </li>
    <li class="nav-item nav-category">
      <span class="nav-link">Dashboard</span>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="dashboard.php">
        <span class="menu-title">Dashboard</span>
        <i class="icon-screen-desktop menu-icon"></i>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
        <span class="menu-title">Design Level</span>
        <i class="icon-layers menu-icon"></i>
      </a>
      <div class="collapse" id="ui-basic">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="add-class.php">Add New Level</a></li>
          <li class="nav-item"> <a class="nav-link" href="manage-class.php">Manage Level</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic1">
        <span class="menu-title">Karyawan</span>
        <i class="icon-people menu-icon"></i>
      </a>
      <div class="collapse" id="ui-basic1">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="add-students.php">Tambah Designer</a></li>
          <li class="nav-item"> <a class="nav-link" href="manage-students.php">Kelola Designer</a></li>
          <li class="nav-item"> <a class="nav-link" href="add-teacher.php">Tambah Supervisor</a></li>
          <li class="nav-item"> <a class="nav-link" href="manage-teacher.php">Kelola Supervisor</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
        <span class="menu-title">Feedback Report</span>
        <i class="fa-solid fa-envelope menu-icon"></i>
      </a>
      <div class="collapse" id="auth">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="add-notice.php"> Send Mail </a></li>
          <li class="nav-item"> <a class="nav-link" href="manage-notice.php"> Kelola Feedback </a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#auth1" aria-expanded="false" aria-controls="auth">
        <span class="menu-title">Update Report</span>
        <i class="fa-solid fa-bullhorn menu-icon"></i>
      </a>
      <div class="collapse" id="auth1">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="add-public-notice.php"> Tambah Pengumuman </a></li>
          <li class="nav-item"> <a class="nav-link" href="manage-public-notice.php"> Kelola Pengumuman </a></li>
        </ul>
      </div>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#auth2" aria-expanded="false" aria-controls="auth">
        <span class="menu-title">Halaman</span>
        <i class="fa-solid fa-pager menu-icon"></i>
      </a>
      <div class="collapse" id="auth2">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="about-us.php"> Tentang Kami </a></li>
          <li class="nav-item"> <a class="nav-link" href="contact-us.php"> Kontak Kami </a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="between-dates-reports.php">
        <span class="menu-title">Laporan</span>
        <i class="icon-notebook menu-icon"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#auth3" aria-expanded="false" aria-controls="auth">
        <span class="menu-title">Pencarian</span>
        <i class="icon-magnifier menu-icon"></i>
      </a>
      <div class="collapse" id="auth3">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="searchstu.php"> Siswa </a></li>
          <li class="nav-item"> <a class="nav-link" href="searchteac.php"> Guru </a></li>
        </ul>
      </div>
    </li>
    </li>
  </ul>
</nav>