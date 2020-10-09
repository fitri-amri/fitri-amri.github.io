<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_students.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Add Student</div>
			<p><a href="students.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Back</a></p>
	<div class="addstudent">
	<div class="details">Please Enter Details Below</div>		
	<form class="form-horizontal" method="POST" action="student_save.php" enctype="multipart/form-data">
			<div class="control-group">
			<label class="control-label" for="inputEmail">Student No:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="student_no" placeholder="Student No" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputEmail">Firstname:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="firstname" placeholder="Firstname" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Lastname:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="lastname" placeholder="Lastname" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">IC Number:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="icnumber" placeholder="IC Number" required>
			</div>
		</div>
		
				<div class="control-group">
			<label class="control-label" for="inputPassword">Gender:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="gender" placeholder="gender" required>
			</div>
		</div>
				<div class="control-group">
			<label class="control-label" for="inputPassword">Address:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="address" placeholder="Address" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Muet Result:</label>
			<div class="controls">
			<select name="muet" required>
									<option></option>
									<option>Band 1</option>
									<option>Band 2</option>
									<option>Band 3</option>
									<option>Band 4</option>
									<option>Band 5</option>
									<option>Band 6</option>
					</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Fees :</label>
			<div class="controls">
			<select name="fees" required>
									<option></option>
									<option>Paid</option>
									<option>Unpaid</option>
									
					</select>
			</div>
		</div>

		
	
		<div class="control-group">
			<label class="control-label" for="inputPassword">Course:</label>
			<div class="controls">
			<select name="course" required class="span2">
			<option></option>
				<?php
				$query=mysql_query("select * from course") or die(mysql_error());
				while($row=mysql_fetch_array($query)){ ?>
				<option value="<?php echo $row['code']; ?>"><?php echo $row['code']; ?></option>
				<?php } ?>
			</select>
			</div>
		</div>
		
			<div class="control-group">
			<label class="control-label" for="inputPassword">Year Level:</label>
			<div class="controls">
			<select name="year_level" required>
									<option></option>
									<option>First Year</option>
									<option>Second Year</option>
									<option>Third Year</option>
									<option>Fourth Year</option>
					</select>
			</div>
		</div>
		
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Semester:</label>
			<div class="controls">
					<select name="term" class="span2" required>
									<option></option>
									<option>1st</option>
									<option>2nd</option>
					</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Contact Number:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="contact" placeholder="Contact Number" required>
			</div>
		</div>
		
		
				<div class="control-group">
			<label class="control-label" for="inputPassword">Status:</label>
			<div class="controls">
					<select name="status" class="span2" required>
									<option></option>
									<option>Regular</option>
									<option>Irregular</option>
					</select>
			</div>
		</div>
		
		
		

		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Save</button>
			</div>
		</div>
    </form>				
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>