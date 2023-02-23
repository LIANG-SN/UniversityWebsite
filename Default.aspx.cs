using System;
using System.Data;

public partial class SearchForStudent : System.Web.UI.Page
{
    UniversityDB myUniversityDB = new UniversityDB();
    Helpers myHelpers = new Helpers();

    protected void Page_Load(object sender, EventArgs e) { }

    protected void btnFindMovies_Click(object sender, EventArgs e)
    {
        // Reset the page.
        lblResultMessage.Visible = false;
        pnlStudentRecord.Visible = false;
        if (Page.IsValid)
        {
            string tag = myHelpers.CleanInput(txtMovieTag.Text);


            DataTable moviesRecord = myUniversityDB.FindMovies(tag);

            // Show the student record if the query result is not null and something was retrieved.
            if (moviesRecord != null)
            {
                // Display a no result message if nothing was retrieved from the database.
                if (moviesRecord.Rows.Count != 0)
                {
                    gvStudentRecord.DataSource = moviesRecord;
                    gvStudentRecord.DataBind();
                    pnlStudentRecord.Visible = true;
                }
                else // Display a no result message.
                {
                    myHelpers.ShowMessage(lblResultMessage, "No record for the movies was found.");
                }
            }
            else // An SQL error occurred.
            {
                myHelpers.ShowMessage(lblResultMessage, "*** There is an error in the SQL statement of TODO 1.");
            }
        }
    }


    protected void btnFindAccByTime_Click(object sender, EventArgs e)
    {
        // Reset the page.
        resultLable2.Visible = false;
        resultPanel2.Visible = false;
        if (Page.IsValid)
        {
            string startYear = myHelpers.CleanInput(txtStartYear.Text);
            string endYear = myHelpers.CleanInput(txtEndYear.Text);

            DataTable moviesRecord = myUniversityDB.FindAccByTime(startYear, endYear);

            // Show the student record if the query result is not null and something was retrieved.
            if (moviesRecord != null)
            {
                // Display a no result message if nothing was retrieved from the database.
                if (moviesRecord.Rows.Count != 0)
                {
                    GridView2.DataSource = moviesRecord;
                    GridView2.DataBind();
                    resultPanel2.Visible = true;
                }
                else // Display a no result message.
                {
                    myHelpers.ShowMessage(resultLable2, "No record for the accounts was found.");
                }
            }
            else // An SQL error occurred.
            {
                myHelpers.ShowMessage(resultLable2, "*** There is an error in the SQL statement of TODO 2.");
            }
        }
    }
    protected void btnFindMovie_Click(object sender, EventArgs e)
    {
        // Reset the page.
        resultLable3.Visible = false;
        resultPanel3.Visible = false;
        if (Page.IsValid)
        {
            string name = myHelpers.CleanInput(txtCastMember.Text);

            DataTable moviesRecord = myUniversityDB.FindMovie(name);

            // Show the student record if the query result is not null and something was retrieved.
            if (moviesRecord != null)
            {
                // Display a no result message if nothing was retrieved from the database.
                if (moviesRecord.Rows.Count != 0)
                {
                    GridView3.DataSource = moviesRecord;
                    GridView3.DataBind();
                    resultPanel3.Visible = true;
                }
                else // Display a no result message.
                {
                    myHelpers.ShowMessage(resultLable3, "No record for the movies was found.");
                }
            }
            else // An SQL error occurred.
            {
                myHelpers.ShowMessage(resultLable3, "*** There is an error in the SQL statement of TODO 3.");
            }
        }
    }
    protected void btnFindAccByAge_Click(object sender, EventArgs e)
    {
        // Reset the page.
        resultLable4.Visible = false;
        resultPanel4.Visible = false;
        if (Page.IsValid)
        {
            string age = myHelpers.CleanInput(txtFindAccByAge.Text);

            DataTable moviesRecord = myUniversityDB.FindAccByAge(age);

            // Show the student record if the query result is not null and something was retrieved.
            if (moviesRecord != null)
            {
                // Display a no result message if nothing was retrieved from the database.
                if (moviesRecord.Rows.Count != 0)
                {
                    GridView4.DataSource = moviesRecord;
                    GridView4.DataBind();
                    resultPanel4.Visible = true;
                }
                else // Display a no result message.
                {
                    myHelpers.ShowMessage(resultLable4, "No record for the accounts was found.");
                }
            }
            else // An SQL error occurred.
            {
                myHelpers.ShowMessage(resultLable4, "*** There is an error in the SQL statement of TODO 4.");
            }
        }
    }
    protected void btnFindPlaylist_Click(object sender, EventArgs e)
    {
        // Reset the page.
        resultLable5.Visible = false;
        resultPanel5.Visible = false;
        if (Page.IsValid)
        {
            string year = myHelpers.CleanInput(txtFindPlaylist.Text);

            DataTable moviesRecord = myUniversityDB.FindPlaylist(year);

            // Show the student record if the query result is not null and something was retrieved.
            if (moviesRecord != null)
            {
                // Display a no result message if nothing was retrieved from the database.
                if (moviesRecord.Rows.Count != 0)
                {
                    GridView5.DataSource = moviesRecord;
                    GridView5.DataBind();
                    resultPanel5.Visible = true;
                }
                else // Display a no result message.
                {
                    myHelpers.ShowMessage(resultLable5, "No record for the movies was found.");
                }
            }
            else // An SQL error occurred.
            {
                myHelpers.ShowMessage(resultLable5, "*** There is an error in the SQL statement of TODO 5.");
            }
        }
    }
    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        resultLable6.Visible = false;
        resultPanel6.Visible = false;

        string username = myHelpers.CleanInput(txtCreateUserUsername.Text);
        string name = myHelpers.CleanInput(txtCreateUserName.Text);
        string birth = myHelpers.CleanInput(txtCreateUserBirth.Text);
        string premium = myHelpers.CleanInput(txtCreateUserPremium.Text);

        bool success = myUniversityDB.CreateUser(username, name, birth, premium);
        if (success)
        {
            myHelpers.ShowMessage(resultLable6, "Successfully create a user");
        }
        else
        {
            myHelpers.ShowMessage(resultLable6, "Create user fails");
        }
    }
    protected void btnDeleteUser_Click(object sender, EventArgs e)
    {
        resultLable7.Visible = false;
        resultPanel7.Visible = false;

        string username = myHelpers.CleanInput(txtDeleteUser.Text);

        bool success = myUniversityDB.DeleteUser(username);
        if (success)
        {
            myHelpers.ShowMessage(resultLable7, "Successfully delete a user");
        }
        else
        {
            myHelpers.ShowMessage(resultLable7, "Delete user fails");
        }
    }
    protected void btnShowUsers_Click(object sender, EventArgs e)
    {
        resultLable8.Visible = false;
        resultPanel8.Visible = false;

        DataTable records = myUniversityDB.ShowUsers();

        if (records != null)
        {
            // Display a no result message if nothing was retrieved from the database.
            if (records.Rows.Count != 0)
            {
                GridView8.DataSource = records;
                GridView8.DataBind();
                resultPanel8.Visible = true;
            }
            else // Display a no result message.
            {
                myHelpers.ShowMessage(resultLable8, "No record for the movies was found.");
            }
        }
        else // An SQL error occurred.
        {
            myHelpers.ShowMessage(resultLable8, "*** There is an error in the SQL statement of TODO 8.");
        }
    }

}